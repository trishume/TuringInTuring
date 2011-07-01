include "Collections.t" 
include "BasicString.t"
include "Values.t"

class THash
	 import HashMap,Value,valPtr,BasicString,BasicStringImpl
	 export g, s, construct,constructLarge
	 var map : ^Map 
	 proc construct
		  new HashMap, map 
		  map -> construct ()
	 end construct
	 proc constructLarge()
		  new HashMap, map 
		  map -> constructSize (200)
	 end constructLarge
	 fcn g (s : string) : valPtr
		  var key : ^BasicString 
		  new BasicStringImpl, key
		  key -> construct () 
		  key -> assignValue (s)
		  %put map -> toString()
		  if map -> containsKey(key) then
				result cheat(valPtr,map -> retrieve(key))
		  else
				result nil
		  end if
	 end g
	 proc s (str : string, v : valPtr)
		  % Create a key-value pair and insert it into the HashMap 
		  var key : ^BasicString
		  new BasicStringImpl, key 

		  key -> construct () 
		  key -> assignValue (str)
		  %put intstr(key -> hashCode())
		  %quit
		  map -> insert (key, v) 
	 end s
	 proc destroy
		  map -> destroy()
		  free map
	 end destroy
end THash

type hashPtr : pointer to THash

fcn initTHash() : ^THash
	 var hash : ^THash
	 new THash, hash
	 hash -> construct()
	 result hash
end initTHash


/*
var theHash : hashPtr
var theVal : valPtr
init_thash(theHash)
init_string_value(theVal,"it worked!!!")

theHash -> s("message",theVal)

put theHash -> g("message") -> toString()
*/
