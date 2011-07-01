unit

class TextBoxClass
    inherit GenericActiveWidgetClass

    implement by TextBoxBodyClass
    import TextFieldClass
    export
    % The external interface
	Initialize, InitializeFull, InitializeChoice, ClearText, AddLine, 
	AddText, SetTopLine, SetScrollOnAdd,AddToken,AddLineFull,AddImage,
    % The package interface
	HScrollProc, VScrollProc,SetTokenClick

    deferred procedure Initialize (x, y, width, height : int)
    deferred procedure InitializeFull (x, y, width, height, newBorder,
	fontID : int)
    deferred procedure InitializeChoice (x, y, width, height, newBorder,
	fontID : int, newActionProc : procedure x (line : int))
    deferred procedure ClearText
    deferred procedure AddLine (text : string)
    deferred procedure AddLineFull (text : string,fld : ^TextFieldClass,col : int)
    deferred procedure AddText (text : string)
    deferred procedure AddImage (fn : string)
    deferred procedure AddToken (text : string,fnt : int,col:int)
    deferred procedure SetTopLine (lineNumber : int)
    deferred procedure SetScrollOnAdd (newScrollOnAdd : boolean)

    deferred procedure HScrollProc (value : int)
    deferred procedure VScrollProc (value : int)
    
    deferred procedure SetTokenClick(id : string,cproc : procedure x (i : string))
end TextBoxClass

