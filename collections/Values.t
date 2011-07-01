class Value
    inherit Element
    export valType
    
    deferred fcn valType() : string
    body fcn valType() : string
	result "value"
    end valType
    
    body proc construct()
    
    end construct
end Value
type valPtr : unchecked ^Value

class StringValue
    inherit Value
    export val,initValue
    var val : string
    proc initValue(s : string)
	val := s
    end initValue
    body fcn valType() : string
	result "stringValue"
    end valType
    body fcn toString() : string
	result val
    end toString
end StringValue

fcn initStrVal(str : string) : ^StringValue
    var val : ^StringValue
    new StringValue, val
    val -> initValue(str)
    result val
end initStrVal

class MultiValue
    inherit Value
    export initString,initInteger,initReal
    
    type valTypes : enum(str,integer,float,other)
    var curType : valTypes := valTypes.str
    var strVal : unchecked ^string
    var intVal : unchecked ^int
    var realVal : unchecked ^real
    
    proc initString(s : string)
	curType := valTypes.str
	#strVal := addr(s)
    end initString
    proc initInteger(var v : int)
	curType := valTypes.integer
	#intVal := addr(v)
    end initInteger
    proc initReal(var v : real)
	curType := valTypes.float
	#realVal := addr(v)
    end initReal
    
    body fcn toString() : string
	if curType = valTypes.str then
	    result ^strVal
	elsif curType = valTypes.integer then
	    result intstr(^intVal)
	elsif curType = valTypes.float then
	    result realstr(^realVal,15)
	else
	    result "fail!!!"
	end if        
    end toString
    
    body fcn valType() : string
	result "MultiValue"
    end valType
end MultiValue
type MultiValPtr : unchecked ^MultiValue

class BoolValue
    inherit Value
    export val,initValue,toBool
    var val : boolean
    proc initValue(v : boolean)
	val := v
    end initValue
    body fcn valType() : string
	result "stringValue"
    end valType
    body fcn toString() : string
	result "boolean"
    end toString
    fcn toBool() : boolean
	result val
    end toBool
end BoolValue
