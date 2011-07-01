grammar TuringExpressions;

turexpr	:	conditionalOrExpression;

conditionalOrExpression 
    :   conditionalAndExpression
        ('||' conditionalAndExpression
        )*
    ;

conditionalAndExpression 
    :   inclusiveOrExpression
        ('&&' inclusiveOrExpression
        )*
    ;

inclusiveOrExpression 
    :   exclusiveOrExpression
        ('|' exclusiveOrExpression
        )*
    ;

exclusiveOrExpression 
    :   andExpression
        ('^' andExpression
        )*
    ;

andExpression 
    :   equalityExpression
        ('&' equalityExpression
        )*
    ;

equalityExpression 
    :   relationalExpression
        (   
            (   '=='
            |   '!='
            )
            relationalExpression
        )*
    ;

relationalExpression 
    :   shiftExpression
        (relationalOp shiftExpression
        )*
    ;

relationalOp 
    :    '<' '='
    |    '>' '='
    |   '<'
    |   '>'
    ;
    
shiftExpression 
    :   additiveExpression
        (shiftOp additiveExpression
        )*
    ;


shiftOp 
    :    '<' '<'
    |    '>' '>' '>'
    |    '>' '>'
    ;


additiveExpression 
    :   multiplicativeExpression
        (   
            (   '+'
            |   '-'
            )
            multiplicativeExpression
         )*
    ;

multiplicativeExpression 
    :
        unaryExpression
        (   
            (   '*'
            |   '/'
            |   '%'
            )
            unaryExpression
        )*
    ;

/**
 * NOTE: for '+' and '-', if the next token is int or long interal, then it's not a unary expression.
 *       it's a literal with signed value. INTLTERAL AND LONG LITERAL are added here for this.
 */
unaryExpression 
    :   '+'  unaryExpression
    |   '-' unaryExpression
    |   '++' unaryExpression
    |   '--' unaryExpression
    |   unaryExpressionNotPlusMinus
    ;

unaryExpressionNotPlusMinus 
    :   '~' unaryExpression
    |   '!' unaryExpression
    ;