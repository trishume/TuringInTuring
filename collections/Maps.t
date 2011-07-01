/**
 * A map is an unordered associative collection. While objects input are not
 * guaranteed to remain in the same order, they are guaranteed to retain the
 * key->value association they were inserted with.
 */
class pervasive Map
	 inherit Collection
	 export containsKey, containsValue, retrieve, insert

	 body fcn iterator () : ^Iterator
		  put "ERROR: Maps are not iterable. Turing doesn't let me give a more"
		  put "  elegant solution to this problem, because it doesn't allow"
		  put "  interfaces or multiple-inheritance of any sort. Goodbye!"
		  assert false
	 end iterator

	 deferred fcn containsKey (key : ^Element) : boolean                              % Returns true if this map contains a mapping for the specified key.
	 deferred fcn containsValue (value : ^Element) : boolean                          % Returns true if this map maps one or more keys to the specified value.
	 %deferred fcn entrySet() : Set<Map.Entry<K,V>>           % Returns a Set view of the mappings contained in this map.    TODO sets
	 deferred fcn retrieve (key : ^Element) : ^Element                                % Returns the value to which the specified key is mapped, or null if this map contains no mapping for the key.
	 %deferred fcn keySet() : Set<K>      % Returns a Set view of the keys contained in this map.     TODO sets

	 deferred proc insert (key, value : ^Element)                         % Associates the specified value with the specified key in this map.
	 %deferred proc addAll( otherMap : ^Map )  %Copies all of the mappings from the specified map to this map (optional operation).
	 %deferred fcn values () : ^Collection
end Map

/**
 * A simple key-value pair. The MapEntry / MapEntryImpl nonsense is necessary because Turing sucks (doesn't allow forward declaration of
 * classes, won't allow you to declare references to unresolved types. Thus, this implementation.
 */
class pervasive MapEntry
	 inherit Element
	 export key, value, setKey, setValue

	 var key, value : ^Element := nil

	 body proc construct ()
		  className := "Element.MapEntry"
	 end construct

	 % Basic destructor
	 body proc destroy ()

	 end destroy

	 proc setKey (newKey : ^Element)
		  key := newKey
	 end setKey

	 proc setValue (newValue : ^Element)
		  value := newValue
	 end setValue

	 body fcn toString () : string
		  if value = nil then
				result key -> toString () + "->nil"
		  else
				result key -> toString () + "->" + value -> toString ()
		  end if
	 end toString
end MapEntry
type pervasive MapEntryPtr : ^MapEntry
class pervasive MapEntryImpl
	 inherit MapEntry

	 body fcn equals (e : ^Element) : boolean
		  if e -> className not= className then
				result false
		  end if

		  var otherEntry : ^MapEntry := cheat (MapEntryPtr, e)
		  result ((otherEntry -> key -> toString ()) = (key -> toString ()))
	 end equals
end MapEntryImpl

/**
 * Hash-based map. This class will tend to be quite fast, but a proper analysis of the
 * time / computation complexity of this implementation is quite complicated and unhelpful.
 * For most cases, the following rough guides should be sufficient:
 *
 * containsKey - O(1)
 * containsValue - O(n)
 * retrieve - O(1)
 * insert - O(1)
 */
class HashMap
	 inherit Map

	 const DEFAULT_BUCKETS : int := 16
	 var table : flexible array 1 .. 0 of ^List                              % List of MapEntry objects
	 var buckets : int := DEFAULT_BUCKETS
	 var numElements : int := 0

	 % Basic constructor
	 body proc construct ()
		  className := "Element.Iterable.Collection.Map.HashMap"                                                      % Convention: Parent.Parent.Parent.Self
		  new table, buckets
		  for i : 1 .. buckets
				new ArrayList, table (i)
				table (i) -> construct ()
		  end for
	 end construct

	 % Constructor with a given number of buckets
	 body proc constructSize (size : int)
		  buckets := size
		  construct ()
	 end constructSize

	 % Basic destructor
	 body proc destroy ()
		  for i : 1 .. buckets
				table (i) -> destroy ()
				free table (i)
		  end for
		  buckets := 0
		  numElements := 0
		  new table, 0
	 end destroy

	 fcn computeHash (key : ^Element) : int
		  result abs (key -> hashCode () mod buckets) + 1
	 end computeHash

	 proc insertMapEntry (mapEntry : ^MapEntry)
		  var hash : int := computeHash (mapEntry -> key)
		  var dummy : boolean := table (hash) -> add (mapEntry)
		  %put "insertMapEntry NI"
	 end insertMapEntry

	 % Private method used to update the size of the hashtable if the lists are getting too long, based on some heuristic.
	 proc resizeTable (newBuckets : int)
		  var temp : array 1 .. buckets of ^List
		  for i : 1 .. buckets
				temp (i) := table (i)
				table (i) := nil
		  end for

		  buckets := newBuckets
		  new table, buckets

		  for i : 1 .. upper (temp)
				var list : ^List := temp (i)
				for j : 1 .. list -> size ()
					 var mapEntry : ^MapEntry := list -> retrieve (j)
					 insertMapEntry (mapEntry)
				end for
				free list                                                                                             % TODO Destructor!
		  end for
	 end resizeTable

	 % Removes all of the elements from this collection (optional operation).
	 body proc clear (destroy : boolean)
		  for i : 1 .. buckets
				table (i) -> clear (destroy)
		  end for
		  if buckets > DEFAULT_BUCKETS then
				resizeTable (DEFAULT_BUCKETS)
		  end if
		  numElements := 0
	 end clear

	 % Returns true if this collection contains no elements.
	 body fcn isEmpty () : boolean
		  result numElements = 0
	 end isEmpty


	 % Removes a single instance of the specified element from this collection, if it is present.
	 body fcn remove (e : ^Element, destroy : boolean) : boolean                             % TODO: Add some detection for table-resizing
		  var hash : int := computeHash (e)
		  var mapEntry : ^MapEntry
		  new MapEntryImpl, mapEntry
		  mapEntry -> construct ()
		  mapEntry -> setKey (e)
		  var answer : boolean := table (hash) -> remove (mapEntry, destroy)
		  if not answer then
				put "WARNING: Could not remove ", e -> toString (), " from the HashMap!"
		  end if
		  free mapEntry
		  numElements -= 1
		  result answer
	 end remove

	 % Returns an array containing all of the elements in this collection.
	 body fcn size () : int
		  result numElements
	 end size

	 % Returns true if this map contains a mapping for the specified key.
	 body fcn containsKey (key : ^Element) : boolean
		  var hash : int := computeHash (key)
		  var mapEntry : ^MapEntry
		  new MapEntryImpl, mapEntry
		  mapEntry -> construct ()
		  mapEntry -> setKey (key)
		  var answer : boolean := table (hash) -> contains (mapEntry)
		  free mapEntry
		  result answer
	 end containsKey

	 % Returns true if this map maps one or more keys to the specified value.
	 body fcn containsValue (value : ^Element) : boolean
		  for i : 1 .. buckets
				for j : 1 .. table (i) -> size ()
					 var mapEntry : ^MapEntry := cheat (MapEntryPtr, table (i) -> retrieve (j))
					 if mapEntry -> value -> equals (value) then
						  result true
					 end if
				end for
		  end for
	 end containsValue

	 % Returns the value to which the specified key is mapped, or null if this map contains no mapping for the key.
	 body fcn retrieve (key : ^Element) : ^Element
		  var hash : int := computeHash (key)
		  for j : 1 .. table (hash) -> size ()
				var mapEntry : ^MapEntry := cheat (MapEntryPtr, table (hash) -> retrieve (j))
				if mapEntry -> key -> equals (key) then
					 result mapEntry -> value
				end if
		  end for
		  result nil
	 end retrieve


	 body proc insert (key, value : ^Element)                         % Associates the specified value with the specified key in this map.
		  var mapEntry : ^MapEntry
		  new MapEntryImpl, mapEntry
		  mapEntry -> construct ()
		  mapEntry -> setKey (key)
		  mapEntry -> setValue (value)
		  if containsKey (key) then
				var hash : int := computeHash (key)
				for j : 1 .. table (hash) -> size ()
					 var entr : ^MapEntry := cheat (MapEntryPtr, table (hash) -> retrieve (j))
					 if entr -> key -> equals (key) then
						  var dummy := table (hash) -> assign (j, mapEntry)
					 end if
				end for
		  else
				insertMapEntry (mapEntry)
				numElements += 1
		  end if
	 end insert


	 body fcn toString () : string
		  %var answer : string := "HashMap:{\n"
		  put "HashMap:{"
		  for i : 1 .. buckets
				%answer += "  "+intstr(i,4)+") "+table(i)->toString()
				put "  ", i : 4, ") ", table (i) -> toString ()
		  end for
		  %result answer + "\n}"
		  put "}"
		  result ""
	 end toString

	 %deferred fcn entrySet() : Set<Map.Entry<K,V>>           % Returns a Set view of the mappings contained in this map.    TODO sets
	 %deferred fcn keySet() : Set<K>      % Returns a Set view of the keys contained in this map.     TODO sets

	 %deferred proc insertAll( otherMap : ^Map )  %Copies all of the mappings from the specified map to this map (optional operation).
	 %deferred fcn values () : ^Collection

end HashMap
