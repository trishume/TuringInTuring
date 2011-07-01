module Builtin
    import OutputHandler, Symbol, IntSymbol, BoolSymbol, StringSymbol, RealSymbol
    export VerifySymbol, VerifyParams, SetOutput, ToInt, ToBool, ToString,
	FromInt, FromBool, FromString, ToReal, FromReal
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
    fcn ToReal (s : ^Symbol) : real
	if index (s -> symClass (), "IntSymbol") = 0 then % it's a real
	    VerifySymbol (s, "RealSymbol")
	    result cheat (RealSymbol.ptr, s) -> val
	else
	    result intreal(cheat (IntSymbol.ptr, s) -> val)
	end if
    end ToReal
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
	cheated -> SetVal (val)

	result ret
    end FromInt
    fcn FromReal (val : real) : ^Symbol
	var ret : ^Symbol
	new RealSymbol, ret
	ret -> create (o)
	RealSymbol (ret).SetVal (val)
	result ret
    end FromReal
    fcn FromBool (val : boolean) : ^Symbol
	var ret : ^Symbol
	new BoolSymbol, ret
	ret -> create (o)
	var cheated := cheat (BoolSymbol.ptr, ret)
	cheated -> SetVal (val)

	result ret
    end FromBool
    fcn FromString (val : string) : ^Symbol
	var ret : ^Symbol
	new StringSymbol, ret
	ret -> create (o)
	var cheated := cheat (StringSymbol.ptr, ret)
	cheated -> setText (val)

	result ret
    end FromString
end Builtin
class Builtin_View_Update
    inherit ExecutableSymbol
    import Builtin, IntSymbol, BoolSymbol, StringSymbol, NewSym,
	File, GUI, Dir, Font, Input, Joystick, Window, View, Text, Sys, Sprite, Rand, RGB, Pic,
	PC, Net, Music, Mouse, Draw, Str
    body fcn Eval (params : array 1 .. * of ^Symbol) : ^Symbol
	Builtin.VerifyParams (upper (params), 0)



	View.Update

	result NewSym ()
    end Eval
end Builtin_View_Update
class Builtin_maxx
    inherit ExecutableSymbol
    import Builtin, IntSymbol, BoolSymbol, StringSymbol, NewSym,
	File, GUI, Dir, Font, Input, Joystick, Window, View, Text, Sys, Sprite, Rand, RGB, Pic,
	PC, Net, Music, Mouse, Draw, Str
    body fcn Eval (params : array 1 .. * of ^Symbol) : ^Symbol
	Builtin.VerifyParams (upper (params), 0)
	result Builtin.FromInt (maxx)
    end Eval
end Builtin_maxx
class Builtin_maxy
    inherit ExecutableSymbol
    import Builtin, IntSymbol, BoolSymbol, StringSymbol, NewSym,
	File, GUI, Dir, Font, Input, Joystick, Window, View, Text, Sys, Sprite, Rand, RGB, Pic,
	PC, Net, Music, Mouse, Draw, Str
    body fcn Eval (params : array 1 .. * of ^Symbol) : ^Symbol
	Builtin.VerifyParams (upper (params), 0)
	result Builtin.FromInt (maxy)
    end Eval
end Builtin_maxy
class Builtin_chars
    inherit ExecutableSymbol
    import Builtin, IntSymbol,BoolSymbol,StringSymbol, NewSym,
    File,GUI,Dir,Font,Input,Joystick,Window,View,Text,Sys,Sprite,Rand,RGB,Pic,
    PC,Net,Music,Mouse,Draw,Str,Math
    body fcn Eval (params : array 1 .. * of ^Symbol) : ^Symbol
	Builtin.VerifyParams (upper (params), 1)
	var sym0 := Builtin.ToInt (params(1))
	var chrs : array char of boolean
	Input.KeyDown(chrs)
	var res := chrs(chr(sym0))    
	
	result Builtin.FromBool(res)
    end Eval
end Builtin_chars

include "gendefs.t"
include "geninits.t"
include "genconsts.t"

proc DefineBuiltinSymbols (s : ^Scope, out : ^OutputHandler)
    Builtin.SetOutput (out)
	       /*
     var delayFunc : ^Symbol
     new Builtin_delay, delayFunc
     delayFunc -> create (out)
     s -> define ("delay", delayFunc)

     var indexFunc : ^Symbol
     new Builtin_index, indexFunc
     indexFunc -> create (out)
     s -> define ("index", indexFunc)
     */

    var View_UpdateFunc : ^Symbol
    new Builtin_View_Update, View_UpdateFunc
    View_UpdateFunc -> create (out)
    s -> define ("View_Update", View_UpdateFunc)
    
    var maxxFunc : ^Symbol
    new Builtin_maxx, maxxFunc
    maxxFunc -> create (out)
    s -> define ("maxx", maxxFunc)
    
    var maxyFunc : ^Symbol
    new Builtin_maxy, maxyFunc
    maxyFunc -> create (out)
    s -> define ("maxy", maxyFunc)
    
    var charsFunc : ^Symbol
    new Builtin_chars, charsFunc
    charsFunc -> create (out)
    s -> define ("chars", charsFunc)

    %now for generated interfaces
    DefineGeneratedSymbols (s, out)

    %built in constants -----
    DefineGeneratedConstants (s, out)
end DefineBuiltinSymbols

