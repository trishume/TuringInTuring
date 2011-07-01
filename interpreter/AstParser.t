class AstParser
	 inherit Parser
	 import newToken,newNode,newNodeTkn
	    
	 var calls : int := 0
	 
	 body proc internalInit ()
		  %o -> de ("started ast parser")
	 end internalInit

	 % begin rules -----------------------
	 fcn isNodeType(tkn : tokens) : boolean
		  result (tkn = tokens.ASTNODE) or (tkn = tokens.LITERALCHAR) or (tkn = tokens.LITERALSTRING) or (tkn = tokens.LITERAL)
	 end isNodeType
	 proc rnode (root : ^ASTNode,depth : int)
		  /*if depth > 11 then
		    o -> er("TOO MUCH RECURSION, sorry, turing can't handle that much recursion. Not my fault")
		    %o -> de("depth: " + intstr(depth))
		  end if*/
		  match (tokens.LBRACK)

		  var subnode := newNodeTkn(lt (1))
		  %o->de("regognized node with root '"+lt (1) -> text+"'")
		  
		  if isNodeType(la (1)) then
				consume()
		  else
				o->er("not an AST node type for root: " + intstr(ord(la(1))))
		  end if
		  
		  loop
				exit when la (1) = tokens.RBRACK
				match (tokens.ASTSEP)
				%consume()
				if isNodeType(la (1)) then
					 subnode -> addChild(newNodeTkn(lt (1)))
					 %o->de("recognized node leaf token '"+lt (1) -> text+"'")
					 consume()
				elsif la (1) = tokens.LBRACK then
					 rnode (subnode,depth+1)
				else
					 o->wa("unrecognized token in rnode")
					 exit
				end if
		  end loop

		  match (tokens.RBRACK)
		  root -> addChild (subnode)
	 end rnode
	 body fcn parse () : ^ASTNode
		  var root : ^ASTNode
		  new ASTNode, root
		  root -> initialize (newToken (tokens.ROOT, ""))
		  rnode (root,0)
		  result root
	 end parse
end AstParser

