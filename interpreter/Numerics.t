class RealSymbol
    inherit NumericSymbol
    export val, SetVal, SetValStr, ptr
    type ptr : ^RealSymbol

    var val : real

    proc SetValStr (v : string)
	val := strreal (v)
    end SetValStr
    proc SetVal (v : real)
	val := v
    end SetVal

    body fcn valType () : string
	result "RealSymbol"
    end valType
    body fcn toString () : string
	result realstr (val,0)
    end toString

    body fcn symClass () : string
	result "symbol.NumericSymbol.RealSymbol"
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
	var ret : ptr
	new ret
	ret -> create (o)
	ret -> SetVal (val)
	result ret
    end Copy

    % MATH
    body fcn Add (s : ^Symbol) : ^Symbol
	if index (s -> symClass (), valType ()) ~= 0 then
	    var otherVal := cheat (ptr, s) -> val

	    var ret : ptr
	    new ret
	    ret -> create (o)
	    ret -> SetVal (otherVal + val)
	    result ret
	else
	    o -> er ("Can't add int to " + s -> symClass ())
	    result nil
	end if
    end Add
    body fcn Mult (s : ^Symbol) : ^Symbol
	if index (s -> symClass (), valType ()) ~= 0 then
	    var otherVal := cheat (ptr, s) -> val

	    var ret : ptr
	    new ret
	    ret -> create (o)
	    ret -> SetVal (otherVal * val)
	    result ret
	else
	    o -> er ("Can't mult real to " + s -> symClass ())
	    result nil
	end if
    end Mult
    body fcn Div (s : ^Symbol) : ^Symbol
	if index (s -> symClass (), valType ()) ~= 0 then
	    var otherVal := cheat (ptr, s) -> val

	    var ret : ptr
	    new ret
	    ret -> create (o)
	    ret -> SetVal (val div otherVal)
	    result ret
	else
	    o -> er ("Can't div real to " + s -> symClass ())
	    result nil
	end if
    end Div
    body fcn Divide (s : ^Symbol) : ^Symbol
	if index (s -> symClass (), valType ()) ~= 0 then
	    var otherVal := cheat (ptr, s) -> val

	    var ret : ptr
	    new ret
	    ret -> create (o)
	    ret -> SetVal (val / otherVal)
	    result ret
	else
	    o -> er ("Can't divide real to " + s -> symClass ())
	    result nil
	end if
    end Divide
    body fcn Subtract (s : ^Symbol) : ^Symbol
	if index (s -> symClass (), valType ()) ~= 0 then
	    var otherVal := cheat (ptr, s) -> val

	    var ret : ptr
	    new ret
	    ret -> create (o)
	    ret -> SetVal (val - otherVal)
	    result ret
	else
	    o -> er ("Can't sub real to " + s -> symClass ())
	    result nil
	end if
    end Subtract
    
    %comparisons
    body fcn Less (s : ^Symbol) : ^BoolSymbol
	if index (s -> symClass (), valType ()) ~= 0 then
	    var otherVal := cheat (ptr, s) -> val
	    
	    var ret : ^BoolSymbol
	    new ret
	    ret -> create (o)
	    BoolSymbol(ret).SetVal (val < otherVal)
	    result ret
	else
	    o -> er ("Can't " + symClass() +" compare to " + s -> symClass ())
	    result nil
	end if
    end Less
    body fcn Greater (s : ^Symbol) : ^BoolSymbol
	if index (s -> symClass (), valType ()) ~= 0 then
	    var otherVal := cheat (ptr, s) -> val
	    
	    var ret : ^BoolSymbol
	    new ret
	    ret -> create (o)
	    BoolSymbol(ret).SetVal (val > otherVal)
	    result ret
	else
	    o -> er ("Can't " + symClass() +" compare to " + s -> symClass ())
	    result nil
	end if
    end Greater
    body fcn LessEq (s : ^Symbol) : ^BoolSymbol
	if index (s -> symClass (), valType ()) ~= 0 then
	    var otherVal := cheat (ptr, s) -> val
	    
	    var ret : ^BoolSymbol
	    new ret
	    ret -> create (o)
	    BoolSymbol(ret).SetVal (val <= otherVal)
	    result ret
	else
	    o -> er ("Can't " + symClass() +" compare to " + s -> symClass ())
	    result nil
	end if
    end LessEq
    body fcn GreaterEq (s : ^Symbol) : ^BoolSymbol
	if index (s -> symClass (), valType ()) ~= 0 then
	    var otherVal := cheat (ptr, s) -> val
	    
	    var ret : ^BoolSymbol
	    new ret
	    ret -> create (o)
	    BoolSymbol(ret).SetVal (val >= otherVal)
	    result ret
	else
	    o -> er ("Can't " + symClass() +" compare to " + s -> symClass ())
	    result nil
	end if
    end GreaterEq
end RealSymbol
class IntSymbol
    inherit NumericSymbol
    export val, SetVal, SetValStr, ptr
    type ptr : ^IntSymbol

    var val : int

    proc SetValStr (v : string)
	val := strint (v)
    end SetValStr
    proc SetVal (v : int)
	val := v
    end SetVal

    body fcn valType () : string
	result "IntSymbol"
    end valType
    body fcn toString () : string
	result intstr (val)
    end toString

    body fcn symClass () : string
	result "symbol.NumericSymbol.IntSymbol"
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
	var ret : ^IntSymbol
	new IntSymbol, ret
	ret -> create (o)
	ret -> SetVal (val)
	result ret
    end Copy

    % MATH
    body fcn Add (s : ^Symbol) : ^Symbol
	if index (s -> symClass (), valType ()) ~= 0 then
	    var otherVal := cheat (ptr, s) -> val

	    var ret : ptr
	    new ret
	    ret -> create (o)
	    ret -> SetVal (otherVal + val)
	    result ret
	else
	    o -> er ("Can't add int to " + s -> symClass ())
	    result nil
	end if
    end Add
    body fcn Mult (s : ^Symbol) : ^Symbol
	if index (s -> symClass (), valType ()) ~= 0 then
	    var otherVal := cheat (ptr, s) -> val

	    var ret : ptr
	    new ret
	    ret -> create (o)
	    ret -> SetVal (otherVal * val)
	    result ret
	else
	    o -> er ("Can't mult int to " + s -> symClass ())
	    result nil
	end if
    end Mult
    body fcn Div (s : ^Symbol) : ^Symbol
	if index (s -> symClass (), valType ()) ~= 0 then
	    var otherVal := cheat (ptr, s) -> val

	    var ret : ptr
	    new ret
	    ret -> create (o)
	    ret -> SetVal (val div otherVal)
	    result ret
	else
	    o -> er ("Can't div int to " + s -> symClass ())
	    result nil
	end if
    end Div
    body fcn Subtract (s : ^Symbol) : ^Symbol
	if index (s -> symClass (), valType ()) ~= 0 then
	    var otherVal := cheat (ptr, s) -> val

	    var ret : ptr
	    new ret
	    ret -> create (o)
	    ret -> SetVal (val - otherVal)
	    result ret
	else
	    o -> er ("Can't sub int to " + s -> symClass ())
	    result nil
	end if
    end Subtract
    body fcn Modulo (s : ^Symbol) : ^Symbol
	if index (s -> symClass (), valType ()) ~= 0 then
	    var otherVal := cheat (ptr, s) -> val

	    var ret : ptr
	    new ret
	    ret -> create (o)
	    ret -> SetVal (val mod otherVal)
	    result ret
	else
	    o -> er ("Can't mod int to " + s -> symClass ())
	    result nil
	end if
    end Modulo
    
    %comparisons
    body fcn Less (s : ^Symbol) : ^BoolSymbol
	if index (s -> symClass (), valType ()) ~= 0 then
	    var otherVal := cheat (ptr, s) -> val
	    
	    var ret : ^BoolSymbol
	    new ret
	    ret -> create (o)
	    BoolSymbol(ret).SetVal (val < otherVal)
	    result ret
	else
	    o -> er ("Can't " + symClass() +" compare to " + s -> symClass ())
	    result nil
	end if
    end Less
    body fcn Greater (s : ^Symbol) : ^BoolSymbol
	if index (s -> symClass (), valType ()) ~= 0 then
	    var otherVal := cheat (ptr, s) -> val
	    
	    var ret : ^BoolSymbol
	    new ret
	    ret -> create (o)
	    BoolSymbol(ret).SetVal (val > otherVal)
	    result ret
	else
	    o -> er ("Can't " + symClass() +" compare to " + s -> symClass ())
	    result nil
	end if
    end Greater
    body fcn LessEq (s : ^Symbol) : ^BoolSymbol
	if index (s -> symClass (), valType ()) ~= 0 then
	    var otherVal := cheat (ptr, s) -> val
	    
	    var ret : ^BoolSymbol
	    new ret
	    ret -> create (o)
	    BoolSymbol(ret).SetVal (val <= otherVal)
	    result ret
	else
	    o -> er ("Can't " + symClass() +" compare to " + s -> symClass ())
	    result nil
	end if
    end LessEq
    body fcn GreaterEq (s : ^Symbol) : ^BoolSymbol
	if index (s -> symClass (), valType ()) ~= 0 then
	    var otherVal := cheat (ptr, s) -> val
	    
	    var ret : ^BoolSymbol
	    new ret
	    ret -> create (o)
	    BoolSymbol(ret).SetVal (val >= otherVal)
	    result ret
	else
	    o -> er ("Can't " + symClass() +" compare to " + s -> symClass ())
	    result nil
	end if
    end GreaterEq
end IntSymbol

