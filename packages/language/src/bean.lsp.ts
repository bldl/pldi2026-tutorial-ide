import { AstNode, AstUtils, LangiumDocument, MaybePromise } from "langium";
import { CodeActionProvider } from "langium/lsp";
import { CodeActionParams, CancellationToken, Command, CodeAction } from "vscode-languageserver";
import { IdentifierDecl, isIdentifierDecl } from "./generated/ast.js";
import { CodeActionKind, Diagnostic, Range, TextEdit } from "vscode-languageserver-types";

export class BeanCodeActionProvider implements CodeActionProvider {
    getCodeActions(document: LangiumDocument, params: CodeActionParams, cancelToken?: CancellationToken): MaybePromise<Array<Command | CodeAction> | undefined> {
        const codeActions: CodeAction[] = [];
        const diagnostics = params.context.diagnostics.filter(d => d.code === "unused-variable");

        diagnostics.forEach(diagnostic => {
            const matchingIdentifierDecl = this.findIdentifierDeclarationByRange(document, diagnostic.range, isIdentifierDecl);

            if(matchingIdentifierDecl) {
                const removeAction = this.createRemoveDeclarationAction(document, matchingIdentifierDecl, diagnostic);
                if(removeAction) codeActions.push(removeAction);
            }
        });

        return codeActions;
    }

    private findIdentifierDeclarationByRange<T = AstNode>(document: LangiumDocument, range: Range, typeGuard: (node: unknown) => node is T): T | undefined {
        const root = document.parseResult.value;
        const nodes = AstUtils.streamAst(root).filter(node => typeGuard(node));
        const matchingNode = nodes.find(ident => this.rangesOverlap(ident.$cstNode!.range, range));
        return matchingNode;
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
        if (!range) return undefined;

        const edit: TextEdit = {
            range: range,
            newText: '',
        };

        return CodeAction.create(
            `Remove unused declaration for: '${identifierDecl.name}'`,
            { changes: { [document.uri.toString()]: [edit] } },
            CodeActionKind.QuickFix,
        );
    }

}