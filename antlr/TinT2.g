grammar TinT2;
options {output=AST;backtrack=true;memoize=true;}
tokens {
	FUNCDEF;
	PROCDEF;
	FORMALARGS;
	INSTRUCTIONS;
	VARDECL;
	CALL;
	RANGE;
}

@members {
    private String errors = "";
    public void displayRecognitionError(String[] tokenNames,
                                        RecognitionException e) {
        String hdr = getErrorHeader(e);
        String msg = getErrorMessage(e, tokenNames);
        errors = errors + hdr + " " + msg + "\n";
    }
    public String getErrors() {
        return errors;
    }
}

program 	
	:	LT!* instructions^ LT!*;
instructions
	:	instruction (LT+ instruction)* -> ^(INSTRUCTIONS instruction*);
instruction	
	:	vardecl
	|	dummydecl
	|	typedecl
	|	put
	|	get
	|	constdecl
	|	funcdef
	|	procdef
	|	assign
	|	ifstat
	|	linecall
	|	forstat
	|	loopstat
	|	exitstat
	|	resultstat
	|	incr
	;
typ 	:	ID
	|	'array' range (','range)* 'of' typ -> ^('array' typ range+)
	|	'record' LT* formalarg (LT+ formalarg)* LT* 'end' 'record' -> ^('record' formalarg+)
	;
put	:	'put'^ (':'! assignableExpression ','!)? expr (','! expr)* ('.'! '.')?;
get	:	'get'^ (':'! assignableExpression ','!)? expr (':'! '*')?;
incr	:	assignableExpression assop expr -> ^(assop assignableExpression expr);
/*
logic	:	'not' boolexpr -> ^('or' boolexpr boolexpr)
	|	boolexpr 'or' boolexpr -> ^('or' boolexpr boolexpr)
	|	boolexpr 'and' boolexpr -> ^('and' boolexpr boolexpr)
	|	boolexpr 'xor' boolexpr -> ^('xor' boolexpr boolexpr)
	|	expr '>' expr -> ^('>' expr expr)
	|	expr '<' expr -> ^('<' expr expr)
	|	expr '<=' expr -> ^('<=' expr expr)
	|	expr '=>' expr -> ^('=>' expr expr)
	|	expr '=' expr -> ^('=' expr expr)
	|	expr '!=' expr -> ^('!=' expr expr)
	;
math	:	expr '+' expr -> ^('+' expr expr)
	|	expr '-' expr -> ^('-' expr expr)
	|	expr '*' expr -> ^('*' expr expr)
	|	expr '/' expr -> ^('/' expr expr)
	|	expr 'div' expr -> ^('div' expr expr)
	|	expr 'mod' expr -> ^('mod' expr expr)
	;
*/	
//variables
vardecl	:	'var' ID (',' ID)* ':' typ ':=' expr -> ^(VARDECL expr ID*);
dummydecl
	:	'var'! ID!  (','! ID!)* ':'! typ!;
constdecl
	:	'const'^ ID ':='! expr;
assign 	:	assignableExpression':='expr -> ^(':=' assignableExpression expr);
typedecl:	'type' ID ':' LT* typ -> ^('type' ID typ);


//sugars
range	:	expr'.''.'expr -> ^(RANGE expr expr);

// control structures
ifstat 	:	'if' expr ('then'|LT) LT* instructions LT* elsifstat* elsestat? 'end' 'if'? -> ^('if' expr instructions elsifstat* elsestat?);
elsifstat 	
	:	'elsif' expr ('then'|LT) LT* instructions LT* -> ^('elsif' expr instructions);
elsestat 	
	:	'else' LT* instructions LT*-> ^('else' instructions);

forstat	:	'for' ID ':' range LT+ instructions LT* 'end' 'for'? -> ^('for' ID range instructions);
loopstat:	'loop' LT* instructions LT* 'end' 'loop'? -> ^('loop' instructions);
exitstat:	'exit' ('when' expr)? -> ^('exit' expr?);
resultstat
	:	'result'^ expr;

//functions and procedures
linecall:	assignableExpression '('? (expr (',' expr)*)? ')'? -> ^(CALL assignableExpression expr*);
call 	:	assignableExpression '(' (expr (',' expr)*)? ')'-> ^(CALL assignableExpression expr*);
formalargs 	
	:	formalarg(','formalarg)* -> ^(FORMALARGS formalarg+);
formalarg
	:	('var')? ID (',' ID)* ':' typ -> ^(typ 'var'? ID*);
funcdef	:	('fcn'|'function') ID '('(formalargs)?')'':'typ LT*
		instructions LT*
		'end'ID?
		->
		^(FUNCDEF ID formalargs? instructions)
;
procdef	:	('proc'|'procedure') ID '('(formalargs)?')'
		LT* instructions LT*
		'end'ID? -> ^(FUNCDEF ID formalargs? instructions)
;

//lexer
ID  :	('a'..'z'|'A'..'Z') ('a'..'z'|'A'..'Z'|'0'..'9'|'_')*
    ;

INT :	'0'..'9'+('.' ('0'..'9')+)?
    ;

COMMENT
    :   '%' ~('\n'|'\r')* {$channel=HIDDEN;}
    |   '/*' ( options {greedy=false;} : . )* '*/' {$channel=HIDDEN;}
    ;

WS  :   ( ' '
        | '\t'
        | '\r'
//        | '\n'
        ) {$channel=HIDDEN;}
    ;
LT
	: '\n'		// Line feed.
	| '\r'		// Carriage return.
	| '\u2028'	// Line separator.
	| '\u2029'	// Paragraph separator.
	;

STRING
    :  '"' ( ESC_SEQ | ~('\\'|'"') )* '"'
    ;

CHAR:  '\'' ( ESC_SEQ | ~('\''|'\\') ) '\''
    ;

fragment
HEX_DIGIT : ('0'..'9'|'a'..'f'|'A'..'F') ;

fragment
ESC_SEQ
    :   '\\' ('b'|'t'|'n'|'f'|'r'|'\"'|'\''|'\\')
    |   UNICODE_ESC
    |   OCTAL_ESC
    ;

fragment
OCTAL_ESC
    :   '\\' ('0'..'3') ('0'..'7') ('0'..'7')
    |   '\\' ('0'..'7') ('0'..'7')
    |   '\\' ('0'..'7')
    ;

fragment
UNICODE_ESC
    :   '\\' 'u' HEX_DIGIT HEX_DIGIT HEX_DIGIT HEX_DIGIT
    ;

multop 
	:	'*'
	|	'/'
	|	'mod'
	|	'div'
	;
addop 
	:	'+'
	|	'-'
	;
assop	:	'+='
	|	'-='
	;
//expressions

expr	:	conditionalOrExpression;

conditionalOrExpression 
    :   conditionalAndExpression
        ('or'^ conditionalAndExpression
        )*
    ;

conditionalAndExpression 
    :   equalityExpression
        ('and'^ equalityExpression
        )*
    ;

equalityExpression 
    :   relationalExpression
        (   
            (   '='
            |   '!='
            |	'~='
            )^
            relationalExpression
        )*
    ;

relationalExpression 
    :   additiveExpression (relationalOp^ relationalExpression)*;

relationalOp 
    :    '<='
    |    '>='
    |   '<'
    |   '>'
    ;


additiveExpression 
    :   multiplicativeExpression (addop^ multiplicativeExpression)*;

multiplicativeExpression 
    	:	unaryExpression (multop^ unaryExpression)* ;



/**
 * NOTE: for '+' and '-', if the next token is int or long interal, then it's not a unary expression.
 *       it's a literal with signed value. INTLTERAL AND LONG LITERAL are added here for this.
 */
unaryExpression 
    :   '+'  unaryExpression -> ^('+' unaryExpression)
    |   '-' unaryExpression -> ^('-' unaryExpression)
    |   '++' unaryExpression -> ^('++' unaryExpression)
    |   '--' unaryExpression -> ^('--' unaryExpression)
    |   unaryExpressionNotPlusMinus
    ;

unaryExpressionNotPlusMinus 
    :   'not' unaryExpression -> ^('not' unaryExpression)
    |	primaryExpression
    ;
    
primaryExpression
	:	INT
	|	STRING
	|	CHAR
	|	call
	|	assignableExpression
	|	'('! expr')'!
	;
assignableExpression
	:	('^'^)? ptrReferenceExpression
	;
ptrReferenceExpression
	:	fieldReferenceExpression ('->'^ fieldReferenceExpression)* 
	;
fieldReferenceExpression
	:	ID ('.'^ ID)* ;