class TuringParser
	 inherit Parser
	 import newToken

	 body proc internalInit()
		  %o -> de("initialized turing parser")
	 end internalInit

	 % begin rules -----------------------
	 proc rexpr(root : ^ASTNode)
		  if spec(tokens.LITERALSTRING) then
		  elsif spec(tokens.LITERAL) then
		  elsif spec(tokens.ID) then
		  else
				o -> er("did not regognize expression")
		  end if
	 end rexpr
	 proc rparams(root : ^ASTNode)
		  loop
				exit when la(1) = tokens.RBRACK
				consume()            
		  end loop
	 end rparams
	 proc rcall(root : ^ASTNode)
		  match(tokens.ID)
		  match(tokens.LBRACK)
		  rparams(root)
		  match(tokens.RBRACK)
		  o -> de("recognized function")
	 end rcall
	 proc rtype(root : ^ASTNode)
		  if spec(tokens.STRINGTYPE) then
		  elsif spec(tokens.INT) then
		  else
				match(tokens.ID)
		  end if
	 end rtype
	 proc rvardecl(root : ^ASTNode)
		  match(tokens.VARDECL)
		  match(tokens.ID)
		  match(tokens.COLON)
		  rtype(root)
		  if la(1) = tokens.ASSIGN then
				match(tokens.ASSIGN)
				rexpr(root)
		  end if
		  o -> de("recognized variable declaration")
	 end rvardecl
	 proc rmain(root : ^ASTNode)
		  if la(1) = tokens.ID and la(2) = tokens.LBRACK then
				rcall(root)
		  elsif la(1) = tokens.VARDECL then
				rvardecl(root)
		  else
				%o -> wa("unrecognized construct")
				consume()
		  end if
	 end rmain
	 proc rfile(root : ^ASTNode)
		  loop
			exit when la(1) = tokens.EOF
			rmain(root)
		  end loop
	 end rfile
	 body fcn parse() : ^ASTNode
		  var root : ^ASTNode
		  new ASTNode,root
		  root -> initialize(newToken(tokens.ROOT,""))
		  rfile(root)
		  result root
	 end parse
end TuringParser

