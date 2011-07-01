/**
 * Collections module that mimics the functionality provided by the Java Collections Framework.
 * Unfortunately, Turing lacks templating and a universal superclass, so any class that is to be
 * stored in a collection must extend the "Element" class.
 *
 * TODO:
 * - Use pre and post keywords to enforce pre and post requirements for functions where possible.
 * - Iterators
 * - Sets
 *
 * Author: Demonwasp of CompSci.ca
 * Since: 2009 Jan 29
 */

% Represents any object that can be put into a collection; extend this object to be able to
% use collection classes with your objects.
class pervasive Element
	export construct, destroy, equals, hashCode, toString, className

	var className : string := "Element"

	% Basic constructor
	deferred proc construct ()

	% Basic destructor
	deferred proc destroy ()

	% Returns a number in the range (-maxint, maxint). This is used by any form of storage dependent
	% on a hash. The hash must be strictly non-random (i.e. it must be deterministic based on the
	% object's fields), but must take on a variety of values to be a useful key. This method does not
	% need to be implemented if you do not intend to use your derived object as a key.
	deferred fcn hashCode () : int

	% Compares the specified object with this collection for equality.
	deferred fcn equals (e : ^Element) : boolean
	body fcn equals (e : ^Element) : boolean
		result false        % Default implementation always assumes that objects are not "equal"
	end equals

	% Gives a string representation of this object for output
	fcn toString () : string
		result "'" + className + "'"
	end toString

end Element


/**
 * An iterator provides limited access to a Collection's internals and is best used for traversing an
 * arbitrary collection.
 */
class pervasive Iterator
	inherit Element
	export hasNext, next, remove

	% Returns true if the iteration has more elements.
	deferred fcn hasNext () : boolean

	% Returns the next element in the iteration.
	deferred fcn next () : ^Element

	% Removes from the underlying collection the last element returned by the iterator.
	deferred fcn remove (destroy : boolean) : ^Element
end Iterator

% Any collection you can have an iterator over
class pervasive Iterable
	inherit Element
	export iterator

	% Returns an iterator over the elements in this collection.
	deferred fcn iterator () : ^Iterator

end Iterable

class pervasive Collection
	inherit Iterable
	export constructSize, add, addAll, clear, contains, containsAll, isEmpty, remove, /*removeAll, retainAll,*/ size

	% Constructor with a size argument
	deferred proc constructSize (size : int)

	% Ensures that this collection contains the specified element (optional operation).
	% Returns true if this collection changed as a result of the call.
	% (Returns false if this collection does not permit duplicates and already contains the specified element.)
	deferred fcn add (e : ^Element) : boolean

	% Adds all of the elements in the specified collection to this collection (optional operation).
	deferred fcn addAll (c : ^Collection) : boolean

	% Removes all of the elements from this collection (optional operation).
	deferred proc clear (destroy : boolean)

	% Returns true if this collection contains the specified element.
	deferred fcn contains (e : ^Element) : boolean

	% Returns true if this collection contains all of the elements in the specified collection.
	deferred fcn containsAll (c : ^Collection) : boolean

	% Returns true if this collection contains no elements.
	deferred fcn isEmpty () : boolean

	% Removes a single instance of the specified element from this collection, if it is present. If destroy is true, then
	% the element in question will have its destroy() method called, then will be freed.
	deferred fcn remove (e : ^Element, destroy : boolean) : boolean

	% Removes all of this collection's elements that are also contained in the specified collection (optional operation).
	%deferred fcn removeAll (c : ^Collection) : boolean

	% Retains only the elements in this collection that are contained in the specified collection (optional operation).
	%deferred fcn retainAll (c : ^Collection) : boolean

	% Returns an array containing all of the elements in this collection.
	deferred fcn size () : int

	% Returns an array containing all of the elements in this collection; the runtime type of the returned array is that of the specified array.
	%deferred fcn toArray () : array 1 .. * of Element  % TODO: How can we return a variable-length array? Wrap it in a class? Sigh.

end Collection


include "Lists.t"
include "Maps.t"

