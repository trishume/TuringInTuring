module Builtin
    import OutputHandler, Symbol, IntSymbol, BoolSymbol
    export VerifySymbol, VerifyParams, SetOutput, ToInt, ToBool, ToString,
	FromInt
    var o : ^OutputHandler
    proc VerifySymbol (s : ^Symbol, t : string)
	if index (s -> symClass (), t) = 0 then
	    o -> er ("wrong symbol type. Expected " + t + " got " + s -> symClass ())
	end if
    end VerifySymbol
    proc VerifyParams (got, need : int)
	if got ~= need then
	    o -> er ("Wrong number of parameters. Expected " + intstr (need) + " got " + intstr (got))
	end if
    end VerifyParams
    proc SetOutput (out : ^OutputHandler)
	o := out
    end SetOutput
    % conversion
    fcn ToInt (s : ^Symbol) : int
	if index (s -> symClass (), "IntSymbol") = 0 then % it's a real
	    VerifySymbol (s, "RealSymbol")
	    result round(cheat (RealSymbol.ptr, s) -> val)
	else
	    result cheat (IntSymbol.ptr, s) -> val
	end if
    end ToInt
    fcn ToBool (s : ^Symbol) : boolean
	VerifySymbol (s, "BoolSymbol")
	result cheat (BoolSymbol.ptr, s) -> val
    end ToBool
    fcn ToString (s : ^Symbol) : string
	result s -> toString ()
    end ToString

    fcn FromInt (val : int) : ^Symbol
	var ret : ^Symbol
	new IntSymbol, ret
	ret -> create (o)
	var cheated := cheat (IntSymbol.ptr, ret)
	cheated -> SetValInt (val)

	result ret
    end FromInt
end Builtin

class Builtin_delay
    inherit ExecutableSymbol
    import Builtin, IntSymbol, NewSym
    body fcn Eval (params : array 1 .. * of ^Symbol) : ^Symbol
	%o -> de("calling delay")
	Builtin.VerifyParams (upper (params), 1)

	var sym := Builtin.ToInt (params (1))

	delay (sym)

	result NewSym ()
    end Eval
end Builtin_delay

class Builtin_index
    inherit ExecutableSymbol
    import Builtin, IntSymbol, NewSym
    body fcn Eval (params : array 1 .. * of ^Symbol) : ^Symbol
	Builtin.VerifyParams (upper (params), 2)

	var sym := Builtin.ToString (params (1))
	var sym2 := Builtin.ToString (params (2))

	%o -> de("finding index of " + sym + " in " + sym2)

	var res : int := index (sym, sym2)


	result Builtin.FromInt (res)
    end Eval
end Builtin_index

proc DefineBuiltinSymbols (s : ^Scope, out : ^OutputHandler)
    Builtin.SetOutput (out)

    var delayFunc : ^Symbol
    new Builtin_delay, delayFunc
    delayFunc -> create (out)
    s -> define ("delay", delayFunc)

    var indexFunc : ^Symbol
    new Builtin_index, indexFunc
    indexFunc -> create (out)
    s -> define ("index", indexFunc)
end DefineBuiltinSymbols

