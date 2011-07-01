
class Lexer
    import OutputHandler
    export construct,charAt,c,getLine,isLetter,isNumber
    var input : flexible array 1..0 of string
    var c : char
    var p : int := 1
    var o : ^OutputHandler
    
    function getLines (fileName : string) : int
	    var f, numLines : int
	    var line : string
	    open : f, fileName, get
	    numLines := 0
	    loop
		exit when eof (f)
		get : f, line : *
		numLines += 1
	    end loop
	    close : f
	    result numLines
    end getLines
    fcn getLine(i : int) : string
	result input (i) + '\n'
    end getLine
    
    procedure readFile (fileName : string)
	    var f : int
	    var line : string
	    open : f, fileName, get
	    for i : 1 .. upper (input)
		get : f, input (i) : *
	    end for    
	    close : f
    end readFile

    fcn charAt(ch : int) : char
	var curChar : int := 0
	%iterate lines
	for i : 1..upper(input)
	    var curString : string
	    curString := getLine(i)
	    var curLength : int := length(curString)
	    curChar += length(curString)
	    if curChar >= ch then
		var delta : int := ch - (curChar - curLength)
		result curString (delta)
	    end if
	end for
	result chr(4) % end of transmission
    end charAt
    
    proc construct(out : ^OutputHandler)
	o := out
	new input, getLines ("prog.tt")
	readFile ("prog.tt")
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
	result (letter = ' ' or letter = '\n' or letter = '\r' or letter = '\t')
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

    
