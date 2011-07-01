procedure EnterPressed (field : ^TextFieldClass)
    %put "stuff"
end EnterPressed
procedure TextEntered (text : string)
    %put "stuff"
end TextEntered
class TuringHighlighter
    import EditTextBoxClass,EnterPressed,GUI,TextEntered
    export Construct, WriteToBox

    var lines : flexible array 1 .. 1 of string

    proc ReadFile (fname : string)
	var stream : int
	open : stream, fname, get
	loop
	    exit when eof (stream)
	    get : stream, lines (upper (lines)) : *
	    new lines, upper (lines) + 1
	end loop
	close : stream
    end ReadFile
    proc Construct (fname : string)
	ReadFile (fname)
    end Construct
    proc WriteToBox (box : ^EditTextBoxClass)
	var txtfnt := Font.New ("mono:12")
	for i : 1 .. (upper (lines) - 1)
	    box -> AddLine (lines (i))
	end for
    end WriteToBox
end TuringHighlighter

