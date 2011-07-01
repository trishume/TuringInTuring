class Scope
	 import Symbol
	 export define, resolve, construct, parent, sresolve, assign

	 var parent : ^Scope

	 deferred proc construct (p : ^Scope)
	 deferred proc define (name : string, sym : ^Symbol)
	 deferred fcn resolve (name : string) : ^Symbol
	 deferred fcn sresolve (name : string) : ^Symbol
	 deferred proc assign (name : string, sym : ^Symbol)
end Scope

class BasicScope
	 inherit Scope
	 import THash, initTHash, valPtr, symPtr, Value
	 export ConstructBig

	 var syms : ^THash
	 body proc construct (p : ^Scope)
		  parent := p
		  syms := initTHash ()
	 end construct
	 proc ConstructBig ()
		  parent := nil
		  new THash, syms
		  syms -> constructLarge ()
	 end ConstructBig
	 %interface

	 body proc define (name : string, sym : symPtr)
		  syms -> s (name, cheat (valPtr, sym))
	 end define
	 body proc assign (name : string, sym : symPtr)
		  var val : ^Value := syms -> g (name)
		  if val ~= nil then
				define (name, sym)
		  else
				var curscope : ^Scope := parent
				var success := false
				loop
					 exit when curscope = nil
					 success := (curscope -> sresolve (name)) ~= nil
					 exit when success
					 curscope := curscope -> parent
				end loop
				if success then
					 curscope -> define (name, sym)
				else
					 define (name, sym)
				end if
		  end if

	 end assign
	 body fcn sresolve (name : string) : symPtr
		  %put name
		  result syms -> g (name)
	 end sresolve
	 body fcn resolve (name : string) : symPtr
		  %put name
		  var val : ^Value := syms -> g (name)
		  if val ~= nil then
				%put val -> toString()
				var res := cheat (symPtr, val)
				result res
		  elsif parent ~= nil then
				var upvar := parent -> resolve (name)
				if upvar ~= nil then
					 result upvar
				else
					 result nil
				end if
		  else
				result nil
		  end if
	 end resolve
end BasicScope

class ScopeSymbol
	 inherit Symbol
	 import BasicScope, Scope
	 export Resolve, Define, ptr
	 type ptr : ^ScopeSymbol

	 var s : ^Scope
	 body fcn valType () : string
		  result "ScopeSymbol"
	 end valType
	 body fcn toString () : string
		  result "ScopeSymbol"
	 end toString
	 body fcn symClass () : string
		  result "Symbol.ScopeSymbol"
	 end symClass

	 body proc construct ()
		  new BasicScope, s
		  s -> construct (nil)
	 end construct
	 fcn Resolve (v : string) : ^Symbol
		  result s -> resolve (v)
	 end Resolve
	 proc Define (v : string, sym : ^Symbol)
		  s -> define (v, sym)
	 end Define
end ScopeSymbol
