unit
class textToken
    inherit lineToken
    import TextFieldClass
    export font, col, text, textTokenPtr, setText
    type textTokenPtr : ^textToken
    var font, col : int
    var text : string
    var field : ^TextFieldClass

    proc setText (s : string, fld : ^TextFieldClass, c : int)
	text := ""
	for i : 1 .. length (s)
	    if s (i) = '\t' then
		text += "        "
	    else
		text += s (i)
	    end if
	end for
	font := defFontId
	col := c

	width := Font.Width (text, font)
	var ht, dummy : int
	Font.Sizes (font, ht, dummy, dummy, dummy)
	height := ht
	field := fld
	isClick := false
    end setText
    body proc DrawToken (x, y : int)
	
	if field ~= nil then
	    field -> SetPositionAndSize (x, y, 100, 0)
	else
	    Font.Draw (text, x, y, font, col)
	end if
    end DrawToken
end textToken

