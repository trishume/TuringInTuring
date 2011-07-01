/**
 * A List is an ordered collection of objects. For more information, see the Java API at
 * http://java.sun.com/javase/6/docs/api/ , specifically http://java.sun.com/javase/6/docs/api/java/util/List.html
 */
class pervasive List
    inherit Collection
    export addAt, retrieve, indexOf, lastIndexOf, removeAt, assign

    % Inserts the specified element at the specified position in this list.
    deferred proc addAt (i : int, e : ^Element)

    % Returns the element at the specified position in this list. This is "get" from the Java API; Turing uses get as a keyword.
    deferred fcn retrieve (i : int) : ^Element

    % Returns the index of the first occurrence of the specified element in this list, or -1 if this list does not contain the element.
    deferred fcn indexOf (e : ^Element) : int

    % Returns the index of the last occurrence of the specified element in this list, or -1 if this list does not contain the element.
    deferred fcn lastIndexOf (e : ^Element) : int

    % Removes the element at the specified position in this list; returns the element that was removed.
    deferred fcn removeAt (i : int) : ^Element

    % Replaces the element at the specified position in this list with the specified element; returns the replaced element.
    % This corresponds to the "set" operation from the Java API.
    deferred fcn assign (i : int, e : ^Element) : ^Element

end List


/**
 * Helper class for LinkedList. NOT public (do not use this in your own programs). This class is
 * for Collections internal use only.
 */
class LinkedNode
    export value, next, setNext, setValue, freeValue

    var next : ^LinkedNode
    var value : ^Element

    proc setNext (n : ^LinkedNode)
	next := n
    end setNext

    proc setValue (v : ^Element)
	value := v
    end setValue

    proc freeValue ()
	free value
    end freeValue
end LinkedNode


/**
 * Helper class for LinkedList. NOT public (do not use this in your own programs). This class is
 * for internal use only.
 */
class DLinkedNode
    export construct, value, prev, next, setNext, setPrev, setValue, freeValue

    var prev, next : ^DLinkedNode
    var value : ^Element

    proc construct (p, n : ^DLinkedNode, v : ^Element)
	prev := p
	next := n
	value := v
    end construct

    proc setNext (n : ^DLinkedNode)
	next := n
    end setNext

    proc setPrev (p : ^DLinkedNode)
	prev := p
    end setPrev

    proc setValue (v : ^Element)
	value := v
    end setValue

    proc freeValue ()
	free value
    end freeValue
end DLinkedNode


/**
 * ListIterator is an iterator that works over a List. This shouldn't be a surprise.
 *
 * List iterator uses only the public interface methods of List, and so may prove slow
 * in certain cases (particularly when removing things from a LinkedList or DLinkedList,
 * both of which are O(n) operations).
 */
class pervasive ListIterator
    inherit Iterator
    export constructIterator

    var list : ^List
    var place : int

    proc constructIterator (targetList : ^List)
	list := targetList
	place := 0
    end constructIterator

    % Returns true if the iteration has more elements.
    body fcn hasNext () : boolean
	result place < list -> size ()
    end hasNext

    % Returns the next element in the iteration.
    body fcn next () : ^Element
	place += 1
	result list -> retrieve (place)
    end next

    % Removes from the underlying collection the last element returned by the iterator (optional operation).
    body fcn remove (destroy : boolean) : ^Element
	%put "ListIterator::remove(",destroy,") @ ", place
	if place = 0 then               % We haven't started yet, short-circuit
	    result nil
	end if

	var elem : ^Element := list -> removeAt (place)
	if destroy then
	    elem -> destroy ()
	    free elem
	    result nil
	else
	    result elem
	end if
    end remove
end ListIterator


/**
 * Array-based implementation of the List interface. Generally-good performance:
 *  add - O(1)
 *  addAt - O(n-i)
 *  assign - O(1)
 *  clear - O(n)
 *  contains - O(n)
 *  indexOf, lastIndexOf - O(n)
 *  isEmpty, size - O(1)
 *  remove - O(n)
 *  removeAt - O(n-i)
 *  retrieve - O(1)
 */
class pervasive ArrayList
    inherit List

    const BASE_LIST_SIZE : int := 16
    var list : flexible array 1 .. 0 of ^Element
    var listSize : int := 0

    body proc construct ()
	className := "Element.Iterable.Collection.List.ArrayList"               % Convention: Parent.Parent.Parent.Self
	new list, BASE_LIST_SIZE
    end construct

    body proc constructSize (size : int)
	className := "Element.Iterable.Collection.List.ArrayList"               % Convention: Parent.Parent.Parent.Self
	new list, size
    end constructSize

    body proc destroy ()
	new list, 0
	listSize := 0
    end destroy

    body fcn iterator () : ^Iterator
	var iter : ^ListIterator
	new ListIterator, iter
	iter -> constructIterator (self)
	result iter
    end iterator

    body fcn add (e : ^Element) : boolean
	if (listSize >= upper (list)) then               % Expand the array where necessary
	    new list, 2 * upper (list)
	end if
	listSize += 1
	list (listSize) := e
	result true             % This method will ALWAYS modify a list object, as it adds to the back of the list.
    end add


    body proc addAt (i : int, e : ^Element)
	if (listSize >= upper (list)) then               % Expand the array where necessary
	    new list, 2 * upper (list)
	end if
	for decreasing j : upper (list) .. i             % Shift any elements above...
	    list (j + 1) := list (j)
	end for
	list (i) := e
	listSize += 1
    end addAt

    body fcn assign (i : int, e : ^Element) : ^Element
	var temp : ^Element := list (i)
	list (i) := e
	result temp
    end assign

    body proc clear (destroy : boolean)
	for i : 1 .. listSize
	    if destroy then
		list (i) -> destroy ()
		free list (i)
	    end if
	    list (i) := nil
	end for
	listSize := 0
    end clear

    body fcn contains (e : ^Element) : boolean
	for i : 1 .. listSize
	    if (list (i) -> equals (e)) then
		result true
	    end if
	end for
	result false
    end contains

    body fcn indexOf (e : ^Element) : int
	for i : 1 .. listSize
	    if (list (i) not= nil and list (i) -> equals (e)) then
		result i
	    end if
	end for
    end indexOf

    body fcn lastIndexOf (e : ^Element) : int
	for decreasing i : listSize .. 1
	    if (list (i) not= nil and list (i) -> equals (e)) then
		result i
	    end if
	end for
    end lastIndexOf

    body fcn isEmpty () : boolean
	result listSize = 0
    end isEmpty

    body fcn remove (e : ^Element, destroy : boolean) : boolean
	for i : 1 .. listSize
	    if list (i) -> equals (e) then
		if destroy then
		    list (i) -> destroy ()
		    free list (i)
		end if
		listSize -= 1
		for j : i .. listSize                               % Shift subsequent elements back
		    list (j) := list (j + 1)
		end for
		result true
	    end if
	end for
	result false
    end remove

    body fcn removeAt (i : int) : ^Element
	var temp : ^Element := list (i)
	listSize -= 1
	for j : i .. listSize
	    list (j) := list (j + 1)
	end for
	result temp
    end removeAt

    body fcn retrieve (i : int) : ^Element
	result list (i)
    end retrieve

    body fcn size () : int
	result listSize
    end size

    body fcn toString () : string
	var answer : string := "{"
	if (list (1) not= nil and listSize >= 1) then
	    answer += list (1) -> toString ()
	end if
	for i : 2 .. listSize
	    if (list (i) not= nil) then
		answer += "," + list (i) -> toString ()
	    end if
	end for
	answer += "}"
	result answer
    end toString

       /*
     % Adds all of the elements in the specified collection to this collection (optional operation).
     deferred fcn addAll (c : ^Collection) : boolean                                 NEED ITERATORS

     % Returns true if this collection contains all of the elements in the specified collection.
     deferred fcn containsAll (c : ^Collection) : boolean                           NEED ITERATORS

     % Returns an iterator over the elements in this collection.
     deferred fcn iterator () : ^Iterator                                           NEED ITERATORS

     % Removes all of this collection's elements that are also contained in the specified collection (optional operation).
     deferred fcn removeAll (c : ^Collection) : boolean                             NEED ITERATORS

     % Retains only the elements in this collection that are contained in the specified collection (optional operation).
     deferred fcn retainAll (c : ^Collection) : boolean                             NEED ITERATORS
     */
end ArrayList


/**
 * Singly-linked implementation of the List interface. Moderate performance:
 *  add - O(1)
 *  addAt - O(i) - Best for inserts near the beginning of the list
 *  assign - O(i)
 *  clear - O(n)
 *  contains - O(n)
 *  indexOf, lastIndexOf - O(n)
 *  isEmpty, size - O(1)
 *  remove - O(n)
 *  removeAt - O(i)
 *  retrieve - O(i)
 */
class pervasive LinkedList
    inherit List
    import LinkedNode

    var head, tail : ^LinkedNode := nil
    var listSize : int := 0


    body proc construct ()
	className := "Element.Iterable.Collection.List.LinkedList"              % Convention: Parent.Parent.Parent.Self
    end construct

    body proc constructSize (size : int)
	className := "Element.Iterable.Collection.List.LinkedList"              % Convention: Parent.Parent.Parent.Self
	% Size directive is ignored here
    end constructSize

    body proc destroy ()
	clear (true)
    end destroy

    body fcn iterator () : ^Iterator
	%result createLinkedListIterator (self, head)
	var iter : ^ListIterator
	new ListIterator, iter
	iter -> constructIterator (self)
	result iter
    end iterator

    body fcn add (e : ^Element) : boolean
	var newNode : ^LinkedNode
	new newNode
	newNode -> setNext (nil)
	newNode -> setValue (e)

	if tail not= nil then
	    tail -> setNext (newNode)
	    tail := newNode
	else
	    if head = nil then
		head := newNode
		tail := newNode
	    end if
	end if
	listSize += 1
	result true
    end add


    body proc addAt (i : int, e : ^Element)
	var current : ^LinkedNode := head
	var j : int := 1
	loop
	    if j = i - 1 then
		var newNode : ^LinkedNode
		new newNode
		newNode -> setNext (current -> next)
		newNode -> setValue (e)

		current -> setNext (newNode)

		listSize += 1

		exit
	    end if

	    current := current -> next
	    j += 1
	end loop
    end addAt


    body fcn assign (i : int, e : ^Element) : ^Element
	var current : ^LinkedNode := head
	var j : int := 1
	loop
	    if j = i then
		var temp : ^Element := current -> value
		current -> setValue (e)
		result temp
	    end if

	    current := current -> next
	    j += 1
	end loop
    end assign


    body proc clear (destroy : boolean)
	var current : ^LinkedNode
	var next : ^LinkedNode := head
	loop
	    current := next

	    exit when next = nil

	    next := current -> next

	    if destroy then
		current -> value -> destroy ()
		current -> freeValue ()
	    end if
	    free current

	end loop
	head := nil
	tail := nil
	listSize := 0
    end clear


    body fcn contains (e : ^Element) : boolean
	var current : ^LinkedNode := head
	if current ~= nil then
	    loop
		if current -> value -> equals (e) then
		    result true
		end if

		current := current -> next
		exit when current = nil
	    end loop
	end if
	result false
    end contains


    body fcn indexOf (e : ^Element) : int
	var current : ^LinkedNode := head
	var j : int := 1
	loop
	    if current -> value -> equals (e) then
		result j
	    end if

	    current := current -> next
	    j += 1
	    exit when current = nil
	end loop
	result - 1
    end indexOf


    body fcn lastIndexOf (e : ^Element) : int
	var current : ^LinkedNode := head
	var j : int := 1
	var last : int := -1
	loop
	    if current -> value -> equals (e) then
		last := j
	    end if

	    current := current -> next
	    j += 1
	    exit when current = nil
	end loop
	result last
    end lastIndexOf


    body fcn isEmpty () : boolean
	result listSize = 0
    end isEmpty

    body fcn remove (e : ^Element, destroy : boolean) : boolean
	%put "LinkedList::remove(", e->toString(), ")"
	var last : ^LinkedNode := nil
	var current : ^LinkedNode := head
	loop
	    exit when current = nil

	    if current -> value -> equals (e) then
		if last not= nil then                           % Avoid freeing the head
		    last -> setNext (current -> next)
		else
		    head := current -> next
		end if
		if current -> next = nil then                   % Avoid freeing the tail
		    tail := last
		end if

		if destroy then
		    current -> value -> destroy ()
		    current -> freeValue ()
		end if
		free current

		listSize -= 1
		result true
	    end if

	    last := current
	    current := current -> next
	end loop
	result false
    end remove

    body fcn removeAt (i : int) : ^Element
	% Removing the head
	if i = 1 then
	    var temp : ^LinkedNode := head
	    var tempValue : ^Element := temp -> value

	    head := head -> next

	    if temp = tail then
		tail := head
	    end if

	    free temp
	    listSize -= 1
	    result tempValue
	end if

	% Removing something later in the list
	var j : int := 1
	var current : ^LinkedNode := head
	loop
	    exit when current = nil

	    if j = i - 1 then               % current->next is to be removed
		var temp : ^LinkedNode := current -> next
		var tempValue : ^Element := temp -> value

		current -> setNext (current -> next -> next)
		if temp = tail then                     % Removed the tail, use previous element
		    tail := current
		end if

		free temp
		listSize -= 1
		result tempValue
	    end if

	    current := current -> next
	    j += 1
	end loop
    end removeAt


    body fcn retrieve (i : int) : ^Element
	var current : ^LinkedNode := head
	var j : int := 1
	loop
	    if j = i then
		result current -> value
	    end if

	    current := current -> next
	    j += 1
	end loop
    end retrieve


    body fcn size () : int
	result listSize
    end size


    body fcn toString () : string
	var answer : string := "{"
	var current : ^LinkedNode := head
	loop
	    exit when current = tail
	    answer += current -> value -> toString () + ","

	    current := current -> next
	end loop
	if tail not= nil then
	    answer += tail -> value -> toString ()
	end if
	answer += "}"
	result answer
    end toString

end LinkedList


/**
 * Doubly-linked implementation of the List interface. Moderate performance:
 *  add - O(1)
 *  addAt - O(i)
 *  assign - O(i)
 *  clear - O(n)
 *  contains - O(n)
 *  indexOf, lastIndexOf - O(n)
 *  isEmpty, size - O(1)
 *  remove - O(n)
 *  removeAt - O(i)
 *  retrieve - O(i)
 */
class pervasive DLinkedList
    inherit List
    import DLinkedNode

    var head, tail : ^DLinkedNode := nil
    var listSize : int := 0


    body proc construct ()
	className := "Element.Iterable.Collection.List.DLinkedList"             % Convention: Parent.Parent.Parent.Self
    end construct

    body proc constructSize (size : int)
	className := "Element.Iterable.Collection.List.DLinkedList"             % Convention: Parent.Parent.Parent.Self
	% Size directive is ignored completely here
    end constructSize

    body proc destroy ()
	clear (true)
    end destroy

    body fcn iterator () : ^Iterator
	var iter : ^ListIterator
	new ListIterator, iter
	iter -> constructIterator (self)
	result iter
    end iterator

    body fcn add (e : ^Element) : boolean
	var newNode : ^DLinkedNode
	new newNode
	newNode -> construct (tail, nil, e)

	if head = nil then
	    head := newNode
	end if
	if tail not= nil then
	    tail -> setNext (newNode)
	end if
	tail := newNode
	listSize += 1
	result true
    end add


    body proc addAt (i : int, e : ^Element)
	if (listSize - i < i) then                  % From the tail
	    var current : ^DLinkedNode := tail
	    var j : int := listSize
	    loop
		if j = i then
		    var newNode : ^DLinkedNode
		    new newNode
		    newNode -> construct (current, current -> next, e)

		    if current -> next not= nil then
			current -> next -> setPrev (newNode)
		    end if
		    current -> setNext (newNode)

		    listSize += 1

		    exit
		end if

		current := current -> prev
		j -= 1
	    end loop
	else                                        % From the head
	    var current : ^DLinkedNode := head
	    var j : int := 1
	    loop
		if j = i then
		    var newNode : ^DLinkedNode
		    new newNode
		    newNode -> construct (current -> prev, current, e)

		    if current -> prev not= nil then
			current -> prev -> setNext (newNode)
		    end if
		    current -> setPrev (newNode)

		    listSize += 1

		    exit
		end if

		current := current -> next
		j += 1
	    end loop
	end if
    end addAt

    body fcn assign (i : int, e : ^Element) : ^Element
	if (listSize - i < i) then                  % From the tail
	    var current : ^DLinkedNode := tail
	    var j : int := listSize
	    loop
		if j = i then
		    var temp : ^Element := current -> value
		    current -> setValue (e)
		    result temp
		end if

		current := current -> prev
		j -= 1
	    end loop
	else                                        % From the head
	    var current : ^DLinkedNode := head
	    var j : int := 1
	    loop
		if j = i then
		    var temp : ^Element := current -> value
		    current -> setValue (e)
		    result temp
		end if

		current := current -> next
		j += 1
	    end loop
	end if
    end assign

    body proc clear (destroy : boolean)
	var current : ^DLinkedNode
	var next : ^DLinkedNode := head
	loop
	    current := next

	    exit when next = nil

	    next := current -> next

	    if destroy then
		current -> value -> destroy ()
		current -> freeValue ()
	    end if
	    free current

	end loop
	head := nil
	tail := nil
	listSize := 0
    end clear

    body fcn contains (e : ^Element) : boolean
	var current : ^DLinkedNode := head
	loop
	    if current -> value -> equals (e) then
		result true
	    end if

	    current := current -> next
	    exit when current = nil
	end loop
	result false
    end contains

    body fcn indexOf (e : ^Element) : int
	var current : ^DLinkedNode := head
	var j : int := 1
	loop
	    if current -> value -> equals (e) then
		result j
	    end if

	    current := current -> next
	    j += 1
	    exit when current = nil
	end loop
	result - 1
    end indexOf

    body fcn lastIndexOf (e : ^Element) : int
	var current : ^DLinkedNode := tail
	var j : int := listSize
	loop
	    if current -> value -> equals (e) then
		result j
	    end if

	    current := current -> prev
	    j -= 1
	    exit when current = nil
	end loop
	result - 1
    end lastIndexOf

    body fcn isEmpty () : boolean
	result listSize = 0
    end isEmpty

    body fcn remove (e : ^Element, destroy : boolean) : boolean
	var current : ^DLinkedNode := head
	loop
	    if current -> value -> equals (e) then                      % TODO [destructor]

		current -> prev -> setNext (current -> next)                    % Link around
		if current -> next not= nil then
		    current -> next -> setPrev (current -> prev)
		end if

		if destroy then
		    current -> value -> destroy ()
		    current -> freeValue ()
		end if
		free current

		listSize -= 1
		result true
	    end if

	    current := current -> next
	    exit when current = nil
	end loop
	result false
    end remove

    body fcn removeAt (i : int) : ^Element
	%put "removeAt (", i, ")"
	if (listSize - i < i) then                  % From the tail
	    var current : ^DLinkedNode := tail
	    var j : int := listSize
	    loop
		if j = i then
		    if current -> next not= nil then
			current -> next -> setPrev (current -> prev)
		    end if
		    if current -> prev not= nil then
			current -> prev -> setNext (current -> next)
		    end if

		    if current = head then
			head := current -> next
		    end if
		    if current = tail then
			tail := current -> prev
		    end if

		    var temp : ^Element := current -> value
		    free current
		    listSize -= 1
		    result temp
		end if

		current := current -> prev
		j -= 1
	    end loop
	else                                        % From the head
	    var current : ^DLinkedNode := head
	    var j : int := 1
	    loop
		if j = i then
		    if current -> prev not= nil then
			current -> prev -> setNext (current -> next)
		    end if
		    if current -> next not= nil then
			current -> next -> setPrev (current -> prev)
		    end if

		    if current = head then
			head := current -> next
		    end if
		    if current = tail then
			tail := current -> prev
		    end if

		    var temp : ^Element := current -> value
		    free current
		    listSize -= 1
		    result temp
		end if

		current := current -> next
		j += 1
	    end loop
	end if
    end removeAt

    body fcn retrieve (i : int) : ^Element
	if (listSize - i < i) then                  % From the tail
	    var current : ^DLinkedNode := tail
	    var j : int := listSize
	    loop
		if j = i then
		    result current -> value
		end if

		current := current -> prev
		j -= 1
	    end loop
	else                                        % From the head
	    var current : ^DLinkedNode := head
	    var j : int := 1
	    loop
		if j = i then
		    result current -> value
		end if

		current := current -> next
		j += 1
	    end loop
	end if
    end retrieve

    body fcn size () : int
	result listSize
    end size

    body fcn toString () : string
	var answer : string := "{"
	var current : ^DLinkedNode := head
	loop
	    exit when current = tail
	    answer += current -> value -> toString () + ","

	    current := current -> next
	end loop
	if tail not= nil then
	    answer += tail -> value -> toString ()
	end if
	answer += "}"
	result answer
    end toString

end DLinkedList
