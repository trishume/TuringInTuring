unit

class lineRec
    import lineToken,textToken,imageToken,TextFieldClass
    export next, setNext,lineHeight,lineWidth,DrawLine,
	AddTokenColour,AddImage,clickEvent,LastToken
    /*type textToken :
	record
	    font : int
	    col : int
	    width,height : int
	    text : string
	end record*/
    var tokens : flexible array 1 .. 0 of ^lineToken
    var next : ^lineRec
    
    var lineHeight,lineWidth : int
    var ldx,ldy : int

    /*fcn text () : string
	var fullText : string := ""
	for i : 1 .. upper (tokens)
	    fullText += tokens (i)->text
	end for
	result fullText
    end text*/
    proc RecalcDimensions ()
	var maxh := 10
	for i : 1 .. upper (tokens)
	    maxh := max(tokens(i)->height,maxh)
	end for
	lineHeight := maxh
	%width
	lineWidth := 0
	for i : 1 .. upper (tokens)
	    lineWidth += tokens(i)->width
	end for
    end RecalcDimensions
    proc DrawLine (x, y : int)
	var curx := x
	for i : 1 .. upper (tokens)
	    tokens(i) -> DrawToken(curx, y)
	    curx += tokens(i)->width
	end for
	ldx := x
	ldy := y
    end DrawLine
    fcn NewTextToken() : ^textToken
	var t : ^textToken
	new textToken,t 
	result t
    end NewTextToken
    fcn NewImageToken() : ^imageToken
	var t : ^imageToken
	new imageToken,t 
	result t
    end NewImageToken
    proc AddTokenColour(s : string, fld : ^TextFieldClass, col : int)
	new tokens, (upper (tokens) + 1)
	var t := NewTextToken()
	t -> setText(s,fld,col)
	tokens (upper (tokens)) := t
	RecalcDimensions()
    end AddTokenColour
    proc AddImage(fn : string)
	new tokens, (upper (tokens) + 1)
	var t := NewImageToken()
	t -> SetImage(fn)
	tokens (upper (tokens)) := t
	RecalcDimensions()
    end AddImage
    proc setNext (p : ^lineRec)
	next := p
    end setNext
    
    fcn LastToken() : ^lineToken
	result tokens(upper(tokens))
    end LastToken
    
    %events
    function ptinrect (h, v, x1, v1, x2, v2 : int) : boolean
	result (h > x1) and (h < x2) and (v > v1) and (v < v2)
    end ptinrect
    fcn clickEvent(x,y : int) : boolean
	if ptinrect(x,y,ldx,ldy,ldx + lineWidth,ldy + lineHeight) then
	    var cx := ldx
	    for i : 1..upper(tokens)
		var tk : ^lineToken := tokens(i)
		if ptinrect(x,y,cx,ldy,cx + (tk->width),ldy + (tk->height)) then
		    tk -> clickEvent(x,y)
		end if
		cx += tk -> width
	    end for
	    result true
	end if
	result false
    end clickEvent
end lineRec
