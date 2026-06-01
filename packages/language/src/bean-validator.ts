import { AstUtils, LangiumCoreServices, References, type ValidationAcceptor, type ValidationChecks } from 'langium';
import { IdentifierDecl, isNumericType, isTensorDestructor, isUnitType, type BeanAstType, type Body, type NumericType, type Type } from './generated/ast.js';
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
        const isUnused = (id: IdentifierDecl): boolean => {
            if (!id?.$cstNode) return false;
            return this.references.findReferences(id, { includeDeclaration: false }).isEmpty();
        }

        if (!isTensorDestructor(ident.$container) && isUnused(ident)) {
            accept("hint", `Unused variable '${ident.name}'.`, {
                node: ident,
                code: "unused-variable"
            });
        }
        else if (isTensorDestructor(ident.$container) && isUnused(ident.$container?.id1) && isUnused(ident.$container?.id2)) {
            accept("hint", `Unused variable '${ident.name}'.`, {
                node: ident,
                code: "unused-variable"
            });
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
