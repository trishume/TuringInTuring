unit

class EditTextBoxClass
    inherit GenericActiveWidgetClass

    implement by EditTextBoxBodyClass

    export
    % The external interface
	Initialize, InitializeFull, InitializeChoice, ClearText, AddLine, 
	AddText, SetTopLine, SetScrollOnAdd,SaveToFile,
    % The package interface
	HScrollProc, VScrollProc,var moddable
	
    var moddable : boolean

    deferred procedure Initialize (x, y, width, height : int)
    deferred procedure InitializeFull (x, y, width, height, newBorder,
	fontID : int)
    deferred procedure InitializeChoice (x, y, width, height, newBorder,
	fontID : int, newActionProc : procedure x (line : int))
    deferred procedure ClearText
    deferred procedure AddLine (text : string)
    deferred procedure AddText (text : string)
    deferred procedure SetTopLine (lineNumber : int)
    deferred procedure SetScrollOnAdd (newScrollOnAdd : boolean)

    deferred procedure HScrollProc (value : int)
    deferred procedure VScrollProc (value : int)
    
    deferred proc SaveToFile(fname : string)
end EditTextBoxClass

