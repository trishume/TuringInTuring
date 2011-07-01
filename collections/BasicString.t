class BasicString 
    inherit Element 
    export myString, assignValue 

    var myString : string 

    body proc construct () 
	className := "Element.StringElement" 
    end construct 

    body proc destroy () 
	% do-nothing 
    end destroy 

    proc assignValue (newValue : string) 
	myString := newValue 
    end assignValue 

    body fcn toString () : string 
	%put "StringElement::toString()" 
	result "\'" + myString + "\'" 
    end toString 

    body fcn hashCode () : int 
	var hash : int := 0 
	for i : 1 .. length (myString) 
	    hash += ord (myString (i)) 
	end for 
	result hash 
    end hashCode 
    
end BasicString 

type pervasive BasicStringPtr : ^BasicString 

class BasicStringImpl 
    inherit BasicString 
    
    body fcn equals (e : ^Element) : boolean 
	if e -> className not= className then 
	    result false 
	end if 
	var other : BasicStringPtr := cheat (BasicStringPtr, e) 
	result other -> myString = myString 
    end equals 
end BasicStringImpl 
