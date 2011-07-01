include "Collections.t"
include "BasicString.t"

% TEST
View.Set ("text:80;120;title:Maps Test")


const MAX : int := 80

proc scramble (var arr : array 1 .. MAX of int)
	var a, b, temp : int
	for i : 1 .. MAX
		arr (i) := i
	end for
	for i : 1 .. MAX * 10
		a := Rand.Int (1, MAX)
		b := Rand.Int (1, MAX)
		temp := arr (a)
		arr (a) := arr (b)
		arr (b) := temp
	end for
end scramble



proc testMap (var map : ^Map)
	var dummy : boolean
	%var dummyElem : ^Element
	var elem : BasicStringPtr

	var elems : array 1 .. MAX of BasicStringPtr
	var order : array 1 .. MAX of int

	for i : 1 .. MAX
		new BasicStringImpl, elem
		elem -> construct ()
		elem -> assignValue (chr (i + 31))

		elems (i) := elem
	end for


	put "Inserting 50 elements in a random order..."
	scramble (order)
	for i : 1 .. MAX
		put "Inserting #", order (i), " - ", elems (order (i)) -> toString ()

		map -> insert (elems (order (i)), nil)
		assert map -> size () = i

		put map -> toString ()
	end for

	put "Removing those same 50 elements in a random order..."
	scramble (order)
	for i : 1 .. MAX
		put "Removing #", order (i), " - ", elems (order (i)) -> toString ()

		assert map -> remove (elems (order (i)), false)     % Specifying destroy=false here keeps the objects in the <elems> array valid.
		assert map -> size () = MAX - i

		put map -> toString ()
	end for

	put "The Original Elems array..."
	for i : 1 .. MAX
		put i, ") ", elems (i) -> toString ()
	end for
end testMap


var map : ^Map


put ""
put "=========================================================================="
put "HashMap : "
new HashMap, map
map -> construct ()
testMap (map)
put "----------------------------------"
put "\t\tPASS"
map -> destroy ()
free map

/*
 put ""
 put "=========================================================================="
 %put "LinkedList : "
 %new LinkedList, map
 map->construct()
 testMap (map)
 put "----------------------------------"
 put "\t\tPASS"
 free map

 put ""
 put "=========================================================================="
 %put "DLinkedList : "
 %new DLinkedList, map
 map -> construct()
 testMap (myList)
 put "----------------------------------"
 put "\t\tPASS"
 free myList
 */
