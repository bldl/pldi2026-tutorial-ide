import { AstUtils, LangiumDocument, MaybePromise } from "langium";
import { CodeActionProvider } from "langium/lsp";
import { CodeActionParams, CancellationToken, Command, CodeAction } from "vscode-languageserver";
import { IdentifierDecl, isIdentifierDecl } from "./generated/ast.js";
import { Diagnostic, Range, TextEdit } from "vscode-languageserver-types";

export class BeanCodeActionProvider implements CodeActionProvider {
    getCodeActions(document: LangiumDocument, params: CodeActionParams, cancelToken?: CancellationToken): MaybePromise<Array<Command | CodeAction> | undefined> {
        const codeActions: CodeAction[] = [];
        const diagnostics = params.context.diagnostics.filter(d => d.code === "unused-variable");

        diagnostics.forEach(diagnostic => {
            const node = document.parseResult.value;
            const identifierDecls = AstUtils.streamAst(node).filter(isIdentifierDecl);
            const matchingIdent = identifierDecls.find(ident => this.rangesOverlap(ident.$cstNode!.range, diagnostic.range));
        
            if(matchingIdent) {
                const removeAction = this.createRemoveDeclarationAction(document, matchingIdent, diagnostic);
                if(removeAction) codeActions.push(removeAction);
            }
        });

        return codeActions;
    }

    private rangesOverlap(range1: Range, range2: Range): boolean {
        return !(range1.end.line < range2.start.line ||
            range1.start.line > range2.end.line ||
            (range1.end.line === range2.start.line && range1.end.character < range2.start.character) ||
            (range1.start.line === range2.end.line && range1.start.character > range2.end.character));
    }

    private createRemoveDeclarationAction(
        document: LangiumDocument,
        identifierDecl: IdentifierDecl,
        diagnostic: Diagnostic
    ): CodeAction | undefined {
        const container = identifierDecl.$container;
        if (!container) return undefined;

        let range = container.$cstNode?.range;
        let newText = '';

        if (!range) return undefined;

        const edit: TextEdit = {
            range,
            newText,
        };

        return CodeAction.create(
            'Remove unused declaration',
            { changes: { [document.uri.toString()]: [edit] } },
        );
    }

}