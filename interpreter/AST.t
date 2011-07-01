

class ASTNode
    inherit Value
    import Token, OutputHandler
    export initialize, addChild, getChild, childCount, token, printStringTree

    type ASTNodePtr : ^ASTNode

    var children : ^List
    var token : ^Token


    proc initialize (t : ^Token)
	construct ()
	token := t
    end initialize

    proc addChild (a : ^ASTNode)
	var b : boolean := children -> add (a)
    end addChild
    
    fcn childCount () : int
	result children -> size ()
    end childCount
    fcn getChild (i : int) : ^ASTNode
	if i <= childCount () then
	    var child := children -> retrieve (i)
	    if child not= nil then
		result cheat (ASTNodePtr, child)
	    else
		result nil
	    end if
	else
	    result nil
	end if
    end getChild
    

    body proc construct ()
	new ArrayList, children
	children -> construct ()
    end construct

    body fcn valType () : string
	result "astNode"
    end valType
    proc printStringTree (out : ^OutputHandler)
	if childCount () > 0 then
	    out -> print ("(" + token -> printableText ())

	    var iter := children -> iterator ()
	    loop
		exit when not iter -> hasNext ()
		out -> print (" ")
		var node := cheat (ASTNodePtr, iter -> next ())
		node -> printStringTree (out)
	    end loop

	    out -> print (")")
	else
	    out -> print (token -> printableText ())
	end if
    end printStringTree
end ASTNode
fcn newNode (txt : string) : ^ASTNode
    var node : ^ASTNode
    new ASTNode, node
    node -> initialize (newToken (tokens.ASTNODE, txt))
    result node
end newNode
fcn newNodeTkn (tkn : ^Token) : ^ASTNode
    var node : ^ASTNode
    new ASTNode, node
    node -> initialize (tkn)
    result node
end newNodeTkn

