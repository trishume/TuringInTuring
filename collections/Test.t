include "Collections.t" 
include "BasicString.t" 

% Set up our map object. 
var map : ^Map 
new HashMap, map 
map -> construct () 

% Create a key-value pair and insert it into the HashMap 
var key, value : ^BasicString 
new BasicStringImpl, key 
new BasicStringImpl, value 

key -> construct () 
value -> construct () 
key -> assignValue ("some key") 
value -> assignValue ("myValue") 
map -> insert (key, value) 

% Make a new key with the same value as the original key to retrieve the object 
var otherKey, otherValue : ^BasicString 
new BasicStringImpl, otherKey 
otherKey -> construct () 
otherKey -> assignValue ("some key") 

% Retrieve the value using the other key (which is equal to key according to BasicStringImpl.equals() ) 
put map -> retrieve (otherKey) -> toString () 

% Free all the memory used by the Map object. 
map -> destroy () 
free map 
