import { AstNodeDescription, AstNodeDescriptionProvider, EMPTY_SCOPE, LangiumCoreServices, MapScope, ReferenceInfo, Scope, ScopeProvider } from "langium";
import { Body, Case, Expression, IdentifierDecl, isBody, isCase, isLetBinding, isTensorDestructor, TensorDestructor } from "./generated/ast.js";

export class BeanScopeProvider implements ScopeProvider {
    private astNodeDescriptionProvider: AstNodeDescriptionProvider;

    constructor(services: LangiumCoreServices) {
        this.astNodeDescriptionProvider = services.workspace.AstNodeDescriptionProvider;
    }

    getScope(ref: ReferenceInfo): Scope {
        if (!ref.container) return EMPTY_SCOPE;

        let scope = EMPTY_SCOPE;
        let current = ref.container;
        while (current && current.$container) {
            const container = current.$container;

            if (isBody(container)) {
                const body = container as Body;
                const indexInBody = body.content.indexOf(current as Expression);
                const descriptions = [
                    ...this.collectContextDeclarations(body),
                    ...this.collectSequenceDeclarations(body.content, indexInBody, ref),
                ];
                scope = new MapScope(descriptions, scope);
            }
            else if (isCase(container)) {
                const caseNode = container as Case;

                const leftIndex = caseNode.leftBranch.indexOf(current as Expression);
                if (leftIndex >= 0) {
                    scope = new MapScope(this.collectCaseDeclarations(caseNode.leftName, caseNode.leftBranch, leftIndex, ref), scope);
                }

                const rightIndex = caseNode.rightBranch.indexOf(current as Expression);
                if (rightIndex >= 0) {
                    scope = new MapScope(this.collectCaseDeclarations(caseNode.rightName, caseNode.rightBranch, rightIndex, ref), scope);
                }
            }

            current = container;
        }

        return scope;
    }

    /**
     * 
     * @param body 
     * @returns Scoping information representing the variables declared in the body context.
     */
    private collectContextDeclarations(body: Body): AstNodeDescription[] {
        return [
            ...body.linearVarDecls.map(v =>
                this.astNodeDescriptionProvider.createDescription(v.ident, v.ident.name)
            ),
            ...body.discreteVarDecls.map(v =>
                this.astNodeDescriptionProvider.createDescription(v.ident, v.ident.name)
            ),
        ];
    }

    /**
     * @param sequence A sequence of expressions.
     * @param upToIndex A non-negative integer.
     * @param ref Information about the reference for which a scope is requested.
     * @returns Scoping information about the given expressions.
     */
    private collectSequenceDeclarations(sequence: Expression[], upToIndex: number, ref: ReferenceInfo): AstNodeDescription[] {
        const descriptions: AstNodeDescription[] = [];

        for (let i = 0; i <= upToIndex; i++) {
            descriptions.push(...this.collectExpressionDeclarations(sequence[i], ref));
        }

        return descriptions;
    }

    /**
     * @param expr An `Expression` node.
     * @param ref Information about the reference for which a scope is requested.
     * @returns Scoping information representing the identifiers declared in the given expression.
     */
    private collectExpressionDeclarations(expr: Expression, ref: ReferenceInfo): AstNodeDescription[] {
        if (isLetBinding(expr)) {
            const ident = expr.name as IdentifierDecl;
            return [
                this.astNodeDescriptionProvider.createDescription(ident, ident.name)
            ];
        }
        else if (isTensorDestructor(expr)) {
            const tensorDest = expr as TensorDestructor;
            return [
                this.astNodeDescriptionProvider.createDescription(tensorDest.id1, tensorDest.id1.name),
                this.astNodeDescriptionProvider.createDescription(tensorDest.id2, tensorDest.id2.name)
            ];
        }
        else return [];
    }

    /**
     * @param branchVar Identifier declared at the beginning of a `Case` branch.
     * @param branch A sequence of expressions.
     * @param upToIndex A non-negative integer.
     * @param ref Information about the reference for which a scope is requested.
     * @returns Scoping information about the given `Case` branch.
     */
    private collectCaseDeclarations(branchVar: IdentifierDecl, branch: Expression[], upToIndex: number, ref: ReferenceInfo): AstNodeDescription[] {
        return [
            this.astNodeDescriptionProvider.createDescription(branchVar, branchVar.name),
            ...this.collectSequenceDeclarations(branch, upToIndex, ref),
        ];
    }
}