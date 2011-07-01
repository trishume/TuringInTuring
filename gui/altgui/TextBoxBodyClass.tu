unit

class TextBoxBodyClass
    implement TextBoxClass

    import WidgetGlobals, TextBoxModule,TextFieldClass,
	HorizontalScrollBarClass, VerticalScrollBarClass, lineRec,textToken
    /*
     type lineRec :
     record
     text : string
     tokens : pointer to flexible array 1..1 of textToken
     next : ^lineRec
     end record*/

    var firstLine, lastLine : ^lineRec := nil
    var continueLine : boolean := false
    var hScroll : ^HorizontalScrollBarClass
    var vScroll : ^VerticalScrollBarClass
    var x1, y1, x2, y2 : int
    var numLines, screenLines : int
    var maxWidth : int
    var border : int
    var textFontID : int
    var baseLine : int
    var lineHeight, lineDescent : int
    % Scroll to end of textbox when text added
    var scrollOnAdd : boolean := false
    % Action when user selects a line
    var userActionProc : procedure actionProc (line : int)
    % Can the user use this text box to select
    var selectable : boolean
    % The currently selected line
    var selectedLine : int := 3

    var contHeight : int := 0

    procedure DrawText
	if colourbg = black and backgroundColour not= colourbg then
	    Draw.FillBox (x1, y1, x2, y2, brightwhite)
	else
	    Draw.FillBox (x1, y1, x2, y2, colourbg)
	end if
	const topLine : int := vScroll -> GetSliderValue
	const xOffset := hScroll -> GetSliderValue
	var linePtr : ^lineRec := firstLine
	/*var hind : int := 0
	 loop
	 exit when linePtr = nil
	 hind += linePtr -> lineHeight
	 exit when hind >= topLine
	 linePtr := linePtr -> next
	 end loop*/
	var textY := y2 + topLine
	View.ClipSet (x1, y1, x2, y2)
	loop
	    exit when linePtr = nil
	    exit when textY < (y1 - (linePtr -> lineHeight))
	    /*if cnt + topLine - 1 = selectedLine then
	     Draw.FillBox (x1, textY - lineDescent, x2,
	     textY + lineHeight - lineDescent, blue)
	     Font.Draw (linePtr -> text(), x1 - xOffset + 4, textY, textFontID,
	     white)
	     else
	     Font.Draw (linePtr -> text(), x1 - xOffset + 4, textY, textFontID,
	     black)
	     end if*/
	    textY -= (linePtr -> lineHeight) + lineDescent
	    if textY < y2 then
		linePtr -> DrawLine (x1 - xOffset + 4, textY)
	    end if
	    linePtr := linePtr -> next
	end loop
	View.ClipOff
    end DrawText
    proc RecalcHeight ()
	contHeight := 0
	var linePtr : ^lineRec := firstLine
	loop
	    exit when linePtr = nil
	    contHeight += linePtr -> lineHeight
	    linePtr := linePtr -> next
	end loop
    end RecalcHeight
    /*proc AddDefaultToken(l : ^lineRec)
     %new l->styles
     var sty : textStyle
     sty.font := textFontID
     sty.startind := 0
     sty.endind := 0
     l->styles(1) := sty
     end AddDefaultStyle*/
    body proc SetTokenClick(id : string,cproc : procedure x (i : string))
	var lastToken := lastLine -> LastToken()
	lastToken -> SetClick(id,cproc)
	%put cheat(textToken.textTokenPtr,lastToken) -> text
    end SetTokenClick
    procedure DoAddFull (text : string, fld : ^TextFieldClass, col : int)
	if continueLine then
	    lastLine -> AddTokenColour (text, fld, col)
	else
	    var newLine : ^lineRec
	    new lineRec, newLine
	    newLine -> AddTokenColour (text, fld, col)
	    % Covert tabs
	    /*var ptr := 1
	     loop
	     exit when ptr > length (newLine -> text())
	     if newLine -> text() (ptr) = '\t' then
	     newLine -> setTextColour(
	     newLine -> text() (1 .. ptr - 1) +
	     repeat (" ", 9 - (ptr mod 8)) +
	     newLine -> text() (ptr + 1 .. *),fnt,col)
	     end if
	     ptr += 1
	     end loop*/
	    newLine -> setNext (nil)

	    if lastLine = nil then
		firstLine := newLine
	    else
		lastLine -> setNext (newLine)
	    end if
	    lastLine := newLine
	    numLines += 1
	    contHeight += (newLine -> lineHeight) + lineDescent
	    %RecalcHeight()
	    %if numLines > screenLines then
	    vScroll -> SetMinMax (1, contHeight + 2)
	    %else
	    %vScroll -> SetMinMax (1, numLines)
	    %end if
	end if
	const width := lastLine -> lineWidth
	if width > maxWidth then
	    maxWidth := width
	    if maxWidth > x2 - x1 - 8 then
		hScroll -> SetMinMax (0, maxWidth + 20)
	    else
		hScroll -> SetMinMax (0, maxWidth)
	    end if
	end if

	% If the text added is all off the bottom of the text box,
	% don't bother redrawing.
	if showing and
		numLines <= vScroll -> GetSliderValue + screenLines then
	    DrawText
	end if
    end DoAddFull
    proc DoAdd (text : string)
	DoAddFull (text, nil, black)
    end DoAdd

    procedure DoAddImage (fn : string)
	if continueLine then
	    contHeight -= (lastLine -> lineHeight) + lineDescent
	    lastLine -> AddImage (fn)
	    contHeight += (lastLine -> lineHeight) + lineDescent
	    vScroll -> SetMinMax (1, contHeight + 2)
	else
	    var newLine : ^lineRec
	    new lineRec, newLine
	    newLine -> AddImage (fn)
	    newLine -> setNext (nil)

	    if lastLine = nil then
		firstLine := newLine
	    else
		lastLine -> setNext (newLine)
	    end if
	    lastLine := newLine
	    numLines += 1
	    contHeight += (newLine -> lineHeight) + lineDescent
	    %RecalcHeight()
	    %if numLines > screenLines then
	    vScroll -> SetMinMax (1, contHeight + 50)
	end if
	const width := lastLine -> lineWidth
	if width > maxWidth then
	    maxWidth := width
	    if maxWidth > x2 - x1 - 8 then
		hScroll -> SetMinMax (0, maxWidth + 20)
	    else
		hScroll -> SetMinMax (0, maxWidth)
	    end if
	end if
	DrawText
    end DoAddImage


    procedure DoClear
	firstLine := nil
	lastLine := nil
	hScroll -> SetMinMax (1, 1)
	vScroll -> SetMinMax (0, 0)
	numLines := 0
	maxWidth := 0
	continueLine := false
	selectedLine := 0
    end DoClear


    %
    % The external subprograms of TextBoxClass
    %
    body procedure InitializeChoice (x, y, width, height, newBorder,
	    fontID : int, newActionProc : procedure x (line : int))
	    InitializeFull (x, y, width, height, newBorder, fontID)
	    userActionProc := newActionProc
	    selectable := true
	end InitializeChoice


	body procedure InitializeFull (x, y, width, height : int,
		newBorder, fontID : int)
	    SetPositionAndSize (x, y, width, height)
	    border := TranslateBorder (newBorder)
	    textFontID := TranslateFont (fontID)
	    userActionProc := TextBoxModule.DoNothing
	    selectable := false
	    var prevShow := WidgetGlobals.showWhenInitialized
	    WidgetGlobals.showWhenInitialized := false
	    new hScroll
	    hScroll -> Initialize (100, 100, 100, 0, 100, 0,
		TextBoxModule.HScrollProc)
	    hScroll -> SetUserObject (self)
	    new vScroll
	    vScroll -> Initialize (100, 100, 100, 0, 100, 0,
		TextBoxModule.VScrollProc)
	    vScroll -> SetUserObject (self)
	    vScroll -> SetSliderReverse
	    WidgetGlobals.showWhenInitialized := prevShow

	    DoClear

	    GeneralInitialize
	end InitializeFull


	body procedure Initialize (x, y, width, height : int)
	    InitializeFull (x, y, width, height, 0, 0)
	end Initialize


	body procedure ClearText
	    % Free the line data base
	    var linePtr : ^lineRec := firstLine
	    var nextPtr : ^lineRec
	    loop
		exit when linePtr = nil
		nextPtr := linePtr -> next
		free linePtr
		linePtr := nextPtr
	    end loop

	    DoClear

	    if showing then
		DrawText
	    end if
	end ClearText


	body procedure AddLine (text : string)
	    DoAdd (text)
	    continueLine := false
	end AddLine
	body procedure AddLineFull (text : string, fld : ^TextFieldClass, col : int)
	    DoAddFull (text, fld, col)
	    continueLine := false
	end AddLineFull


	body procedure AddText (text : string)
	    DoAdd (text)
	    continueLine := true
	end AddText
	body procedure AddImage (fn : string)
	    DoAddImage (fn)
	    continueLine := true
	end AddImage
	body procedure AddToken (text : string, fnt : int, col : int)
	    DoAddFull (text, nil, col)
	    continueLine := true
	end AddToken


	body procedure SetTopLine (lineNumber : int)
	    vScroll -> SetSliderValue (0)
	end SetTopLine


	body procedure SetScrollOnAdd (newScrollOnAdd : boolean)
	    scrollOnAdd := newScrollOnAdd
	end SetScrollOnAdd


	body procedure HScrollProc (value : int)
	    if showing then
		DrawText
	    end if
	end HScrollProc


	body procedure VScrollProc (value : int)
	    if showing then
		DrawText
	    end if
	end VScrollProc


	%
	% Overridden subprograms
	%
	body procedure ComputeWidgetPosition
	    if border = WidgetGlobals.LINE then
		x := originalX - 1
		y := originalY - 1
		width := originalWidth + 2
		height := originalHeight + 2
	    elsif border = WidgetGlobals.INDENT then
		x := originalX - riserSize
		y := originalY - riserSize - 1
		width := originalWidth + 2 * riserSize + 1
		height := originalHeight + 2 * riserSize + 1
	    else
		x := originalX - riserSize - 1
		y := originalY - riserSize
		width := originalWidth + 2 * riserSize + 1
		height := originalHeight + 2 * riserSize + 1
	    end if

	    var dummy1, dummy2 : int
	    %charWidth := Font.Width ("M", textFontID)
	    Font.Sizes (textFontID, lineHeight, dummy1, lineDescent, dummy2)
	    #if _DOS_ then
		lineHeight += 4
	    #end if

	    x1 := originalX
	    y1 := originalY + WidgetGlobals.SCROLL_BAR_WIDTH + 1
	    x2 := x1 + originalWidth - WidgetGlobals.SCROLL_BAR_WIDTH - 2
	    y2 := y1 + originalHeight - WidgetGlobals.SCROLL_BAR_WIDTH - 2

	    screenLines := (y2 - y1) div lineHeight

	    hScroll -> SetPosition (originalX, originalY)
	    hScroll -> SetSliderSize (originalWidth -
		WidgetGlobals.SCROLL_BAR_WIDTH)
	    hScroll -> SetScrollAmount (1, x2 - x1 - 10, x2 - x1)
	    vScroll -> SetPosition (originalX + originalWidth -
		WidgetGlobals.SCROLL_BAR_WIDTH - 1,
		originalY + WidgetGlobals.SCROLL_BAR_WIDTH)
	    vScroll -> SetSliderSize (originalHeight -
		WidgetGlobals.SCROLL_BAR_WIDTH)
	    vScroll -> SetScrollAmount (1, 5, 10)
	end ComputeWidgetPosition


	body procedure DrawWidget
	    if not drawn then
		ComputeWidgetPosition
	    end if

	    % Draw the border.
	    if border = WidgetGlobals.LINE then
		Draw.Box (x, y, x + width - 1, y + height - 1, foregroundColour)
	    else
		var topLeftColour, bottomRightColour : int
		if border = WidgetGlobals.INDENT then
		    topLeftColour := darkgrey
		    bottomRightColour := illuminatedColor
		else
		    topLeftColour := illuminatedColor
		    bottomRightColour := darkgrey
		end if
		var x2 : int := x + width - 1
		var y2 : int := y + height - 1
		for offset : 0 .. riserSize - 1
		    Draw.Line (x + offset, y + offset, x2 - offset,
			y + offset, bottomRightColour)
		    Draw.Line (x2 - offset, y + offset, x2 - offset,
			y2 - offset, bottomRightColour)
		    Draw.Line (x + offset, y + offset, x + offset,
			y2 - offset, topLeftColour)
		    Draw.Line (x + offset, y2 - offset, x2 - offset,
			y2 - offset, topLeftColour)
		end for
		if border = WidgetGlobals.INDENT then
		    Draw.Line (x + riserSize, y + riserSize, x2 - riserSize,
			y + riserSize, grey)
		    Draw.Line (x2 - riserSize, y + riserSize, x2 - riserSize,
			y2 - riserSize, grey)
		elsif border = WidgetGlobals.EXDENT then
		    Draw.Line (x + riserSize, y + riserSize, x + riserSize,
			y2 - riserSize, grey)
		    Draw.Line (x + riserSize, y2 - riserSize, x2 - riserSize,
			y2 - riserSize, grey)
		end if
	    end if
	    hScroll -> Show
	    vScroll -> Show
	    DrawText
	end DrawWidget


	body procedure EraseWidget
	    if not drawn then
		ComputeWidgetPosition
	    end if

	    hScroll -> Hide
	    vScroll -> Hide

	    Draw.FillBox (x, y, x + width - 1, y + height - 1, backgroundColour)
	end EraseWidget

	body function ConsiderButtonDown (mouseX, mouseY : int) : boolean
	    if mouseX < x1 or x2 < mouseX or
		    mouseY < y1 or y2 < mouseY then
		result false
	    end if

	    var linePtr : ^lineRec := firstLine
	    loop
		exit when linePtr = nil
		exit when linePtr -> clickEvent (mouseX, mouseY)
		linePtr := linePtr -> next
	    end loop
	    DrawText
	    result true
	end ConsiderButtonDown
    end TextBoxBodyClass

