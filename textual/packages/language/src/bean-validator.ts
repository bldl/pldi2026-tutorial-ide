import { AstUtils, LangiumCoreServices, References, type ValidationAcceptor, type ValidationChecks } from 'langium';
import { IdentifierDecl, isCase, isLetBinding, isNumericType, isTensorDestructor, isUnitType, isVarDecl, VariableReference, type BeanAstType, type Body, type NumericType, type Type } from './generated/ast.js';
import type { BeanServices } from './bean-module.js';

/**
 * Register custom validation checks.
 */
export function registerValidationChecks(services: BeanServices) {
    const registry = services.validation.ValidationRegistry;
    const validator = services.validation.BeanValidator;
    const checks: ValidationChecks<BeanAstType> = {
        Body: [
        ],
        IdentifierDecl: [
            // TODO: ...
        ],
        VariableReference: [
            // TODO: ...
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

    checkLinearVariableAccess(ref: VariableReference, accept: ValidationAcceptor): void {
        // TODO: ...
    }

    /**
     * Determines if the given identifier refers to a linear (ie. `num`) variable.
     * @param ident 
     * @returns `true` if `ident` is linear, `false` otherwise.
     */
    private isLinearVariable(ident: IdentifierDecl): boolean {
        if(isVarDecl(ident.$container)) {
            return ident.$container.$containerProperty === "linearVarDecls";
        }
        else if(isLetBinding(ident.$container)) {
            return ident.$container.kw === "let";
        }
        else if(isTensorDestructor(ident.$container)) {
            return ident.$container.kw === "let";
        }
        else if(isCase(ident.$container)) {
            return true;
        }
        return false;
    }

    checkUnusedVariable(ident: IdentifierDecl, accept: ValidationAcceptor): void {
        // TODO: ...
    }
}
