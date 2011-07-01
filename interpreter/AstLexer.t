class AstLexer
    inherit Lexer
    import Token, tokens, newToken
    export nextToken

    fcn name () : pointer to Token
	var str : string := ""
	loop
	    str := str + c
	    consume ()
	    exit when c = ' ' or c = ')'
	end loop

	result newToken (tokens.ASTNODE, str)
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
	    exit when c = '\"'
	    str := str + c
	    consume ()
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
	    elsif isNumber(c) then
		%var useless := "ldkgh;ghkda;sldkg"
		result number ()
	    elsif c = ' ' then
		consume ()
		result newToken (tokens.ASTSEP, " ")
	    elsif c = '(' then
		consume ()
		result newToken (tokens.LBRACK, "(")
	    elsif c = ')' then
		consume ()
		result newToken (tokens.RBRACK, ")")
	    elsif c = '\"' then
		result literal ()
	    elsif c = '\'' then
		result characterLiteral ()
	    else
		result name ()
	    end if
	end loop
	result newToken (tokens.EOF, "")
    end nextToken
end AstLexer
