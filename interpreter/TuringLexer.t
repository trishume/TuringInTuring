class TuringLexer
    inherit Lexer
    import Token, tokens, newToken
    export nextToken

    fcn colon () : pointer to Token
	consume ()
	if c = '=' then
	    consume ()
	    result newToken (tokens.ASSIGN, ":=")
	else
	    result newToken (tokens.COLON, ":")
	end if
    end colon

    fcn plus () : pointer to Token
	consume ()
	if c = '=' then
	    consume ()
	    result newToken (tokens.INCREMENT, "+=")
	else
	    result newToken (tokens.ADD, "+")
	end if
    end plus

    fcn name () : pointer to Token
	var str : string := ""
	loop
	    str := str + c
	    consume ()
	    exit when not isLetter (c)
	end loop
	if str = "if" then
	    result newToken (tokens.IF, "if")
	elsif str = "end" then
	    consume ()
	    var ended : ^Token := name ()
	    var endedStr : string := ended -> text
	    result newToken (tokens.END, "end " + endedStr)
	elsif str = "pointer" then
	    consume ()
	    var hsdfkh : ^Token := name ()
	    result newToken (tokens.POINTERTO, "pointer to")
	elsif str = "then" then
	    result newToken (tokens.THEN, str)
	elsif str = "else" then
	    result newToken (tokens.ELSE, str)
	elsif str = "elsif" then
	    result newToken (tokens.ELSIF, str)
	elsif str = "result" then
	    result newToken (tokens.RESULT, str)
	elsif str = "fcn" or str = "function" then
	    result newToken (tokens.FUNCTION, str)
	elsif str = "var" then
	    result newToken (tokens.VARDECL, str)
	elsif str = "string" then
	    result newToken (tokens.STRINGTYPE, str)
	else
	    result newToken (tokens.ID, str)
	end if
    end name

    fcn number () : pointer to Token
	var str : string := ""
	loop
	    str := str + c
	    consume ()
	    exit when not (isNumber (c) or (c = '.'))
	end loop
	result newToken (tokens.LITERAL, str)
    end number

    fcn literal () : pointer to Token
	var str : string := ""
	consume ()
	loop
	    str := str + c
	    consume ()
	    exit when c = '\"'
	end loop
	consume ()
	result newToken (tokens.LITERALSTRING, str)
    end literal

    fcn characterLiteral () : pointer to Token
	var str : string := ""
	consume ()
	loop
	    str := str + c
	    consume ()
	    exit when c = '\''
	end loop
	consume ()
	result newToken (tokens.LITERALCHAR, str)
    end characterLiteral


    fcn nextToken () : pointer to Token
	loop
	    exit when ord (c) = 4 % exit when token = EOF
	    if isWS (c) then
		WS ()
	    elsif isLetter (c) then
		result name ()
	    elsif isNumber (c) then
		result number ()
	    elsif c = '(' then
		consume ()
		result newToken (tokens.LBRACK, "(")
	    elsif c = ')' then
		consume ()
		result newToken (tokens.RBRACK, ")")
	    elsif c = '.' then
		consume ()
		result newToken (tokens.FIELD, ".")
	    elsif c = ',' then
		consume ()
		result newToken (tokens.COMMA, ",")
	    elsif c = ':' then
		result colon ()
	    elsif c = '\^' then
		consume ()
		result newToken (tokens.DEREF, "\^")
	    elsif c = '(' then
		consume ()
		result newToken (tokens.LBRACK, "(")
	    elsif c = '=' then
		consume ()
		result newToken (tokens.COMPARE, "=")
	    elsif c = '\"' then
		result literal ()
	    elsif c = '\'' then
		result characterLiteral ()
	    elsif c = '+' then
		result plus ()
	    else
		o -> er ("bad token, not known: " + c)
		exit
	    end if
	end loop
	result newToken (tokens.EOF, "")
    end nextToken
end TuringLexer


