import GUI
include "collections/THash.t"
include "Output.t"
include "Token.t"
include "Lexer.t"
include "TuringLexer.t"
include "AST.t"
include "Parser.t"
include "TuringParser.t"



var lex : ^TuringLexer
new TuringLexer, lex
var output : ^OutputHandler := newTextBoxOutputHandler ()
lex -> construct (output)
/*
loop
    var theT : ^Token := lex -> nextToken ()
    exit when theT -> token = tokens.EOF
    output -> out(theT -> toString ())
end loop
*/

var parse : ^Parser
new TuringParser,parse
parse -> construct(lex,output)
var ast : ^ASTNode := parse -> parse()
ast->printStringTree(output)
loop
    exit when GUI.ProcessEvent
end loop
