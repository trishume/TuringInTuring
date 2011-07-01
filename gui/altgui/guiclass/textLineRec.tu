unit

class textLineRec
    inherit lineRec
    export text, setText,setTextFont,
	AddToken,AddTokenColour,setTextColour
    
    type textToken :
	record
	    font : int
	    col : int
	    width,height : int
	    text : string
	end record
    var tokens : flexible array 1 .. 0 of textToken 

    fcn text () : string
	var fullText : string := ""
	for i : 1 .. upper (tokens)
	    fullText += tokens (i).text
	end for
	result fullText
    end text
    proc RecalcDimensions ()
	var maxh := 10
	for i : 1 .. upper (tokens)
	    var height, dummy : int
	    Font.Sizes (tokens(i).font,height,dummy,dummy,dummy)
	    maxh := max(height,maxh)
	end for
	lineHeight := maxh
	%width
	lineWidth := 0
	for i : 1 .. upper (tokens)
	    lineWidth += tokens(i).width
	end for
    end RecalcDimensions
    proc DrawLine (x, y : int)
	var curx := x
	for i : 1 .. upper (tokens)
	    Font.Draw (tokens (i).text, curx, y, tokens (i).font,
		tokens (i).col)
	    curx += tokens(i).width
	end for
    end DrawLine
    fcn NewToken(s : string, fnt : int) : textToken
	var t : textToken
	t.text := s
	t.font := fnt
	t.width := Font.Width (s, fnt)
	t.col := black
	var height, dummy : int
	Font.Sizes (fnt,height,dummy,dummy,dummy)
	t.height := height
	result t
    end NewToken
    proc AddToken(s : string, fnt : int)
	new tokens, (upper (tokens) + 1)
	tokens (upper (tokens)) := NewToken(s,fnt)
	RecalcDimensions()
    end AddToken
    proc AddTokenColour(s : string, fnt : int, col : int)
	new tokens, (upper (tokens) + 1)
	var t := NewToken(s,fnt)
	t.col := col
	tokens (upper (tokens)) := t
	RecalcDimensions()
    end AddTokenColour
    proc setTextColour(s : string, fnt : int, col : int)
	if upper (tokens) = 0 then
	    new tokens, 1
	end if
	var t := NewToken(s,fnt)
	t.col := col
	tokens (1) := t
	RecalcDimensions()
    end setTextColour
    proc setTextFont (s : string, fnt : int)
	if upper (tokens) = 0 then
	    new tokens, 1
	end if
	tokens (1) := NewToken(s,fnt)
	RecalcDimensions()
    end setTextFont
    proc setText (s : string)
	setTextFont (s, defFontID)
    end setText
    proc setNext (p : ^lineRec)
	next := p
    end setNext
end textLineRec

