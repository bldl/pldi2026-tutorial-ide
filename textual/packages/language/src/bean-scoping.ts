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
        
        // Traverse the AST from the reference up to the root node.
        let current = ref.container;
        while (current && current.$container) {
            const container = current.$container;

            if (isBody(container)) {
                // TODO: collect identifers from context variables and previous expressions.
            }
            else if (isCase(container)) {
                // TODO: collect identifiers from branch.
            }

            current = container;
        }

        return scope;
    }

    /**
     * @param expr An `Expression` node.
     * @param ref Information about the reference for which a scope is requested.
     * @returns Scoping information representing the identifiers declared in the given expression.
     */
    private collectExpressionDeclarations(expr: Expression, ref: ReferenceInfo): AstNodeDescription[] {
        const descriptions: AstNodeDescription[] = [];
        if (isLetBinding(expr)) {
            // TODO: collect identifiers.
        }
        else if (isTensorDestructor(expr)) {
            // TODO: collect identifiers.
        }
        return descriptions;
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