class Parser
    import TuringLexer,Token,OutputHandler,tokens,ASTNode
    export construct,lt,parse
    
    const lookahead := 3
    
    var input : ^TuringLexer
    var o : ^OutputHandler
    var p : int := 0
    var look : array 0..lookahead of ^Token
    
    proc consume()
	var t : ^Token := input->nextToken()
	%o -> de("consumed token " + t->toString() + " for index " + intstr(p))
	look(p) := t
	p := (p + 1) mod lookahead
    end consume
    
    % constructors
    deferred proc internalInit()
    body proc internalInit()
	o -> de("initialized parser")
    end internalInit

    % convenience methods
    fcn lt(i : int) : ^Token
	var ind : int := ((p+i-1) mod lookahead)
	%o -> de("getting token " + intstr(ind))
	result look(ind) % fetch in circular lookahead
    end lt
    fcn la(i : int) : tokens
	result lt(i) -> token
    end la
    
    % matching
    proc match(t : tokens)
	if la(1) = t then
	    consume()
	else
	    o -> er("expecting type " + intstr(ord(t)) + " got " + (lt(1) -> toString()))
	end if
    end match
    
    proc construct(lex : ^TuringLexer, out : ^OutputHandler)
	input := lex
	o := out
	for i : 1..lookahead
	    consume()
	end for
	o -> de("first tokens: "+lt(1)->toString()+", "+lt(2)->toString())
	internalInit()
    end construct
    
    fcn spec(t : tokens) : boolean
	var matched : boolean := false
	if la(1) = t then
	    match(t)
	    matched := true
	end if
	result matched
    end spec
    
    deferred fcn parse() : ^ASTNode
end Parser
 
