class Symbol
    inherit Value
    import OutputHandler
    export symClass, create, Equals, Add, Copy, Mult, Div, Subtract, Modulo, Divide

    var o : ^OutputHandler
    proc create (out : ^OutputHandler)
	o := out
	construct ()
    end create
    body fcn valType () : string
	result "Symbol"
    end valType
    body fcn toString () : string
	result "Symbol(nil)"
    end toString

    deferred fcn symClass () : string
    body fcn symClass () : string
	result "Symbol"
    end symClass

    deferred fcn Equals (s : ^Symbol) : boolean
    body fcn Equals (s : ^Symbol) : boolean
	if s -> valType () = valType () then
	    result true
	else
	    result false
	end if
    end Equals

    deferred fcn Copy () : ^Symbol
    body fcn Copy () : ^Symbol
	result self
    end Copy

    % math!!
    deferred fcn Add (s : ^Symbol) : ^Symbol
    body fcn Add (s : ^Symbol) : ^Symbol
	o -> er ("Cannot add symbols of type " + symClass () + " and " + s -> symClass ())
    end Add
    deferred fcn Mult (s : ^Symbol) : ^Symbol
    body fcn Mult (s : ^Symbol) : ^Symbol
	o -> er ("Cannot multiply symbols of type " + symClass () + " and " + s -> symClass ())
    end Mult
    deferred fcn Div (s : ^Symbol) : ^Symbol
    body fcn Div (s : ^Symbol) : ^Symbol
	o -> er ("Cannot div symbols of type " + symClass () + " and " + s -> symClass ())
    end Div
    deferred fcn Subtract (s : ^Symbol) : ^Symbol
    body fcn Subtract (s : ^Symbol) : ^Symbol
	o -> er ("Cannot subtract symbols of type " + symClass () + " and " + s -> symClass ())
    end Subtract
    deferred fcn Modulo (s : ^Symbol) : ^Symbol
    body fcn Modulo (s : ^Symbol) : ^Symbol
	o -> er ("Cannot mod symbols of type " + symClass () + " and " + s -> symClass ())
    end Modulo
    deferred fcn Divide (s : ^Symbol) : ^Symbol
    body fcn Divide (s : ^Symbol) : ^Symbol
	o -> er ("Cannot divide symbols of type " + symClass () + " and " + s -> symClass ())
    end Divide
end Symbol
fcn NewSym () : ^Symbol
    var ret : ^Symbol
    new Symbol, ret
    result ret
end NewSym
type symPtr : ^Symbol

class StringSymbol
    inherit Symbol
    export text, setText, ptr
    type ptr : ^StringSymbol

    var text : string

    proc setText (s : string)
	text := s
    end setText

    body fcn valType () : string
	result "StringSymbol"
    end valType
    body fcn toString () : string
	result text
    end toString

    body fcn symClass () : string
	result "symbol.StringSymbol"
    end symClass
    % equivelant to other symbol of this type?
    body fcn Equals (s : ^Symbol) : boolean
	if index (s -> symClass (), valType ()) = 0 then
	    result false
	else
	    var cheated := cheat (ptr, s)
	    result (text = cheated -> text)
	end if
    end Equals

    body fcn Add (s : ^Symbol) : ^Symbol
	if index (s -> symClass (), valType ()) ~= 0 then
	    var str := cheat (ptr, s) -> text

	    var ret : ^StringSymbol
	    new StringSymbol, ret
	    ret -> create (o)
	    ret -> setText (str + text)
	    result ret
	else
	    o -> er ("Can't add string to " + s -> symClass ())
	    result nil
	end if
    end Add
    body fcn Copy () : ^Symbol
	var ret : ^StringSymbol
	new StringSymbol, ret
	ret -> create (o)
	ret -> setText (text)
	result ret
    end Copy
end StringSymbol

class BoolSymbol
    inherit Symbol
    export val, SetVal, SetValStr, ptr
    type ptr : ^BoolSymbol

    var val : boolean

    proc SetVal (v : boolean)
	val := v
    end SetVal
    proc SetValStr (s : string)
	if s = "true" then
	    val := true
	else
	    val := false
	end if
    end SetValStr

    body fcn valType () : string
	result "BoolSymbol"
    end valType
    body fcn toString () : string
	if val then
	    result "true"
	else
	    result "false"
	end if
    end toString

    body fcn symClass () : string
	result "symbol.BoolSymbol"
    end symClass

    % equivelant to other symbol of this type?
    body fcn Equals (s : ^Symbol) : boolean
	if index (s -> symClass (), valType ()) = 0 then
	    result false
	else
	    var cheated := cheat (ptr, s)
	    result (val = cheated -> val)
	end if
    end Equals
    body fcn Copy () : ^Symbol
	var ret : ^BoolSymbol
	new ret
	ret -> create (o)
	ret -> SetVal (val)
	result ret
    end Copy
end BoolSymbol
class NumericSymbol
    inherit Symbol
    import BoolSymbol
    export Less, Greater, LessEq, GreaterEq, nptr
    type nptr : ^NumericSymbol
    % Comparisons
    deferred fcn Less (s : ^Symbol) : ^BoolSymbol
    body fcn Less (s : ^Symbol) : ^BoolSymbol
	o -> er ("Cannot compare symbols of type " + symClass () + " and " + s -> symClass ())
    end Less
    deferred fcn Greater (s : ^Symbol) : ^BoolSymbol
    body fcn Greater (s : ^Symbol) : ^BoolSymbol
	o -> er ("Cannot compare symbols of type " + symClass () + " and " + s -> symClass ())
    end Greater
    deferred fcn LessEq (s : ^Symbol) : ^BoolSymbol
    body fcn LessEq (s : ^Symbol) : ^BoolSymbol
	o -> er ("Cannot compare symbols of type " + symClass () + " and " + s -> symClass ())
    end LessEq
    deferred fcn GreaterEq (s : ^Symbol) : ^BoolSymbol
    body fcn GreaterEq (s : ^Symbol) : ^BoolSymbol
	o -> er ("Cannot compare symbols of type " + symClass () + " and " + s -> symClass ())
    end GreaterEq
end NumericSymbol
class RangeSymbol
    inherit Symbol
    export up, low, SetVal, ptr
    type ptr : ^RangeSymbol

    var up, low : int

    proc SetVal (u, l : int)
	up := u
	low := l
    end SetVal

    body fcn valType () : string
	result "RangeSymbol"
    end valType
    body fcn toString () : string
	result intstr (low) + ".." + intstr (up)
    end toString

    body fcn symClass () : string
	result "symbol.RangeSymbol"
    end symClass
end RangeSymbol

class ExecutableSymbol
    inherit Symbol
    export Exec, Eval, ptr
    type ptr : ^ExecutableSymbol

    body fcn valType () : string
	result "ExecutableSymbol"
    end valType
    body fcn toString () : string
	result "ExecutableSymbol"
    end toString
    body fcn symClass () : string
	result "symbol.ExecutableSymbol"
    end symClass

    deferred proc Exec (params : array 1 .. * of ^Symbol)
    deferred fcn Eval (params : array 1 .. * of ^Symbol) : ^Symbol
    body proc Exec (params : array 1 .. * of ^Symbol)
	var ditch := Eval (params)
    end Exec
    body fcn Eval (params : array 1 .. * of ^Symbol) : ^Symbol
	Exec (params)
	result nil
    end Eval
end ExecutableSymbol

class UserExecutableSymbol
    inherit Symbol
    import ASTNode
    export funcnode, funcname, SetNode, NumArgs, GetArgName, ptr
    type ptr : ^UserExecutableSymbol

    var funcname : string
    var funcnode : ^ASTNode
    var funcargs : flexible array 1 .. 0 of string

    fcn NumArgs () : int
	result upper (funcargs)
    end NumArgs
    fcn GetArgName (i : int) : string
	if i <= upper (funcargs) then
	    result funcargs (i)
	else
	    o -> er ("tried to access out of bounds function argument")
	end if
    end GetArgName

    body fcn valType () : string
	result "UserExecutableSymbol"
    end valType
    body fcn toString () : string
	result "UserExecutableSymbol"
    end toString
    body fcn symClass () : string
	result "symbol.UserExecutableSymbol"
    end symClass
    proc AddArg (s : string)
	new funcargs, (upper (funcargs) + 1)
	funcargs (upper (funcargs)) := s
    end AddArg
    proc SetNode (r : ^ASTNode)
	funcname := r -> getChild (1) -> token -> text
	funcnode := r -> getChild (3)
	var args := r -> getChild (2)
	if args -> token -> text = "FORMALARGS" then
	    for i : 1 .. (args -> childCount ())
		var arg := args -> getChild (i)
		for j : 1 .. (arg -> childCount ())
		    AddArg (arg -> getChild (j) -> token -> text)
		end for
	    end for
	else
	    funcnode := args
	end if
    end SetNode
end UserExecutableSymbol



