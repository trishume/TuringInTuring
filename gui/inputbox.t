import GUI in "altgui/GUI",
    TextFieldClass in "altgui/guiclass/TextFieldClass.tu"
    
var curField := 1
var fields : flexible array 1 .. 2 of ^TextFieldClass
var cury := maxy

procedure TextEntered (text : string)
    %put "stuff"
end TextEntered
procedure EnterPressed (field : ^TextFieldClass)
    cury -= 15
    new fields, upper(fields) + 1
    var f : ^TextFieldClass
    new f
    f -> InitializeFull(0, cury, maxx, "", TextEntered, GUI.NOBORDER, 0, 0)
    fields (upper(fields)) := f
    %fields (upper(fields)) := GUI.CreateTextFieldObject (0, cury, maxx, "", TextEntered, GUI.NOBORDER, 0, 0)
    fields(upper(fields)) -> SetEnterProc(EnterPressed)
    %delay(500)
    fields(upper(fields)) -> SetActive()
end EnterPressed
/*procedure KeyHandler (ch : char)
    quit
    if ch = '\n' then
	EnterPressed ()
    end if
end KeyHandler
GUI.SetKeyEventHandler (KeyHandler)*/

for i : 1 .. upper (fields)
    cury -= 15
    fields (i) := GUI.CreateTextFieldObject (0, cury, maxx, "", TextEntered, GUI.NOBORDER, 0, 0)
    fields(i) -> SetEnterProc(EnterPressed)
end for

loop
    exit when GUI.ProcessEvent
    %locate(1,1)
    var mousex, mousey, btn : int
    Mouse.Where (mousex, mousey, btn)
    %put mousex," - ",mousey
    exit when mousey > maxy + 10
end loop

