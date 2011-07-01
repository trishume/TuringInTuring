
var global_input : flexible array 1..0 of char
class Lexer
    import OutputHandler,global_input
    export construct,charAt,c,p,isLetter,isNumber
    var c : char
    var p : int := 1
    var o : ^OutputHandler
    
    function getSize (fileName : string) : int
	    var f, numChars : int
	    var line : char
	    open : f, fileName, get
	    numChars := 0
	    loop
		exit when eof (f)
		get : f, line
		numChars += 1
	    end loop
	    close : f
	    result numChars
    end getSize
    
    procedure readFile (fileName : string)
	    var f : int
	    var inchr : char
	    open : f, fileName, get
	    for i : 1 .. upper (global_input)
		get : f, inchr
		global_input(i) := inchr
	    end for    
	    close : f
    end readFile

    fcn charAt(ch : int) : char
	if ch <= upper(global_input) then
	    result global_input(ch) % end of transmission
	else
	    result chr(4)
	end if
    end charAt
    
    proc construct(out : ^OutputHandler,file : string)
	o := out
	new global_input, getSize (file)
	readFile (file)
	c := charAt(p)
    end construct
    
    proc consume()
	p += 1
	c := charAt(p)
    end consume
    
    fcn isLetter(letter : char) : boolean
	if (ord(letter) >= ord('a') and ord(letter) <= ord('z')) or (ord(letter) >= ord('A') and ord(letter) <= ord('Z')) then
	    result true
	else
	    result false
	end if
    end isLetter
    fcn isNumber(letter : char) : boolean
	if (ord(letter) >= ord('0') and ord(letter) <= ord('9')) then
	    result true
	else
	    result false
	end if
    end isNumber
    
    fcn isWS(letter : char) : boolean
	result (letter = '\n' or letter = '\r' or letter = '\t')
    end isWS
    proc WS()
	loop
	    consume()
	    exit when not isWS(c)
	end loop
    end WS
end Lexer

/*
var lex : ^Lexer
var t : ^Token
new Token,t
new Lexer,lex
lex -> construct()
put lex -> charAt(5)
t -> initToken(tokens.ID,"hi there guy!")
put t -> toString()
var car : char
get car
put lex -> isLetter(car)
*/

    
