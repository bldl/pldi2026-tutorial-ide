import { AstNodeDescription, AstNodeDescriptionProvider, EMPTY_SCOPE, LangiumCoreServices, MapScope, ReferenceInfo, Scope, ScopeProvider } from "langium";
import { Body, Case, Expression, isBody, isCase, isLetBinding, isTensorDestructor, LetBinding, TensorDestructor } from "./generated/ast.js";

export class BeanScopeProvider implements ScopeProvider {
    private astNodeDescriptionProvider: AstNodeDescriptionProvider;

    constructor(services: LangiumCoreServices) {
        this.astNodeDescriptionProvider = services.workspace.AstNodeDescriptionProvider;
    }

    getScope(context: ReferenceInfo): Scope {
        const container = context.container;

        if (!container) return EMPTY_SCOPE;

        let scope = EMPTY_SCOPE;

        // Traverse up to find if this node is in a sequence
        let current = container;
        while (current && current.$container) {
            const container = current.$container;

            // Check if current is in Body.content sequence
            if (isBody(container)) {
                const body = container as Body;
                const index = body.content.indexOf(current as Expression);
                const previousVariablesDescriptions = 
                    index >= 0 
                        ? this.collectSequenceDeclarations(body.content, index)
                        : [];
                const descriptions = [
                    ...body.linearVarDecls.map(v =>
                        this.astNodeDescriptionProvider.createDescription(v.ident, v.ident.name)
                    ),
                    ...body.discreteVarDecls.map(v =>
                        this.astNodeDescriptionProvider.createDescription(v.ident, v.ident.name)
                    ),
                    ...previousVariablesDescriptions,
                ];
                scope = new MapScope(descriptions, scope);
            }

            // Check if current is in Case.leftBranch or Case.rightBranch sequence
            if (isCase(container)) {
                const caseNode = container as Case;
                
                const leftIndex = caseNode.leftBranch.indexOf(current as Expression);
                if (leftIndex >= 0) {
                    scope = new MapScope(this.collectCaseDeclarations(caseNode, leftIndex, true), scope);
                }
                
                const rightIndex = caseNode.rightBranch.indexOf(current as Expression);
                if (rightIndex >= 0) {
                    scope = new MapScope(this.collectCaseDeclarations(caseNode, rightIndex, false), scope);
                }
            }

            current = container;
        }

        return scope;
    }

    /**
     * Collect declarations from expressions in a sequence up to a given index
     */
    private collectSequenceDeclarations(sequence: Expression[], upToIndex: number): AstNodeDescription[] {
        const descriptions: AstNodeDescription[] = [];

        // Collect all declarations from expressions up to and including upToIndex
        for (let i = 0; i <= upToIndex; i++) {
            descriptions.push(...this.extractDeclarationsFromExpression(sequence[i]));
        }

        return descriptions;
    }

    /**
     * Collect declarations from Case node (shared by both branches)
     */
    private collectCaseDeclarations(caseNode: Case, upToIndex: number, isLeftBranch: boolean): AstNodeDescription[] {
        const descriptions: AstNodeDescription[] = [];

        // Add the branch variable introduced by this case
        if (isLeftBranch) {
            descriptions.push(
                this.astNodeDescriptionProvider.createDescription(caseNode.leftName, caseNode.leftName.name)
            );
            // Collect from left branch up to current point
            for (let i = 0; i <= upToIndex; i++) {
                descriptions.push(...this.extractDeclarationsFromExpression(caseNode.leftBranch[i]));
            }
        } else {
            descriptions.push(
                this.astNodeDescriptionProvider.createDescription(caseNode.rightName, caseNode.rightName.name)
            );
            // Collect from right branch up to current point
            for (let i = 0; i <= upToIndex; i++) {
                descriptions.push(...this.extractDeclarationsFromExpression(caseNode.rightBranch[i]));
            }
        }

        return descriptions;
    }

    /**
     * Extract variable declarations introduced by an expression
     */
    private extractDeclarationsFromExpression(expr: Expression): AstNodeDescription[] {
        if (isLetBinding(expr)) {
            const letBinding = expr as LetBinding;
            return [
                this.astNodeDescriptionProvider.createDescription(letBinding.name, letBinding.name.name)
            ];
        }

        if (isTensorDestructor(expr)) {
            const tensorDest = expr as TensorDestructor;
            return [
                this.astNodeDescriptionProvider.createDescription(tensorDest.id1, tensorDest.id1.name),
                this.astNodeDescriptionProvider.createDescription(tensorDest.id2, tensorDest.id2.name)
            ];
        }

        // Case expressions don't declare variables in the sequence; their variables are only visible within branches
        return [];
    }
}