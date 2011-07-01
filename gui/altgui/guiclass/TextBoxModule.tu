unit
module TextBoxModule
    import EditTextBoxClass, TextBoxClass, WidgetGlobals
    export HScrollProc, VScrollProc, DoNothing


    procedure HScrollProc (value : int)
	var widget := WidgetGlobals.selectedWidget -> GetUserObject
	if objectclass (widget) >= EditTextBoxClass then
	    EditTextBoxClass (widget).HScrollProc (value)
	else
	    TextBoxClass (widget).HScrollProc (value)
	end if
    end HScrollProc


    procedure VScrollProc (value : int)
	var widget := WidgetGlobals.selectedWidget -> GetUserObject
	if objectclass (widget) >= EditTextBoxClass then
	    EditTextBoxClass (widget).VScrollProc (value)
	else
	    TextBoxClass (widget).VScrollProc (value)
	end if
    end VScrollProc

    procedure DoNothing (line : int)
    end DoNothing
end TextBoxModule

