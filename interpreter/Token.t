/*type tokens : enum (NULL, ID, LBRACK, RBRACK, INT, REAL, LITERAL, END, COLON, DEREF, ASSIGN, TYPEDECL, ADD, INCREMENT, IF, THEN, VARDECL, STRINGTYPE, QUOTE, EOF, LITERALSTRING, COMPARE, LITERALCHAR, 
    FIELD, COMMA, ELSE, ELSIF, RESULT, FUNCTION, POINTERTO, ROOT, ASTNODE, ASTSEP)
*/    
type tokens : enum (NULL, EOF, ASTNODE, ID, LBRACK, RBRACK, LITERAL, LITERALSTRING, LITERALCHAR, ROOT, ASTSEP)

class Token
    inherit Value
    import tokens
    export text, token, setText, initToken, printableText

    var text : string
    var token : tokens

    proc initToken (t : tokens, s : string)
	text := s
	token := t
    end initToken
    proc setText (s : string)
	text := s
    end setText
    body fcn toString () : string
	result "<" + intstr (ord (token)) + " : \"" + text + "\">"
    end toString
    fcn printableText () : string

	if token = tokens.LITERALCHAR then
	    result "'" + text + "'"
	elsif token = tokens.LITERALSTRING then
	    result "\"" + text + "\""
	else
	    result text
	end if
	%result toString()
    end printableText
end Token

fcn newToken (tkns : tokens, s : string) : pointer to Token
    var tkn : ^Token
    new Token, tkn
    tkn -> initToken (tkns, s)
    result tkn
end newToken

