import { AstUtils, LangiumCoreServices, References, type ValidationAcceptor, type ValidationChecks } from 'langium';
import { IdentifierDecl, isNumericType, isUnitType, type BeanAstType, type Body, type NumericType, type Type } from './generated/ast.js';
import type { BeanServices } from './bean-module.js';

/**
 * Register custom validation checks.
 */
export function registerValidationChecks(services: BeanServices) {
    const registry = services.validation.ValidationRegistry;
    const validator = services.validation.BeanValidator;
    const checks: ValidationChecks<BeanAstType> = {
        Body: [
            validator.checkContextsContainOnlyOneType
        ],
        IdentifierDecl: [
            validator.removeUnusedVariable
        ]
    };
    registry.register(checks, validator);
}

/**
 * Implementation of custom validations.
 */
export class BeanValidator {

    private references: References;

    constructor(services: LangiumCoreServices) {
        this.references = services.references.References;
    }

    removeUnusedVariable(ident: IdentifierDecl, accept: ValidationAcceptor): void {
        if(this.references.findReferences(ident, { includeDeclaration: false }).isEmpty()) {
            accept("hint", `Unused variable '${ident.name}'.`, {
                node: ident,
            })
        }
    }

    checkContextsContainOnlyOneType(body: Body, accept: ValidationAcceptor): void {
        body.discreteVarDecls.forEach(varDecl => {
            if (!this.isDiscreteType(varDecl.ty)) {
                accept("error", "Context variable must be discrete.", {
                    node: varDecl
                })
            }
        });
        body.linearVarDecls.forEach(varDecl => {
            if (!this.isLinearType(varDecl.ty)) {
                accept("error", "Context variable must be linear.", {
                    node: varDecl
                })
            }
        })
    }

    private isLinearType(ty: Type): boolean {
        const units = AstUtils.streamAst(ty).filter((elem: any) => isUnitType(elem));
        const numericTypes = AstUtils.streamAst(ty).filter(elem => isNumericType(elem));
        return units.isEmpty() && numericTypes.every(elem => (elem as NumericType).kw === "num");
    }

    private isDiscreteType(ty: Type): boolean {
        const units = AstUtils.streamAst(ty).filter(elem => isUnitType(elem));
        const numericTypes = AstUtils.streamAst(ty).filter(elem => isNumericType(elem));
        return units.isEmpty() && numericTypes.every(elem => (elem as NumericType).kw === "dnum");
    }
}
