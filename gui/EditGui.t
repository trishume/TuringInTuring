% file open window
var choseNum : int
procedure ChoseFile (line : int)
    choseNum := line
    GUI.Quit
end ChoseFile
fcn LoadFileWindow () : string
    var allFiles : flexible array 1 .. 0 of string
    var winID : int := Window.Open ("position:top;left,graphics:200;250")
    Pic.ScreenLoad("media/gradient-light.jpg",0,-5,picCopy)
    var x : int := GUI.CreateTextBoxChoice (10, 10, 180, 200, 0, 0, ChoseFile)

    var streamNumber : int
    var fileName : string
    streamNumber := Dir.Open ("programs")
    assert streamNumber > 0
    Font.Draw ("Double Click to open.", 10, 235, defFontId, black)
    Font.Draw ("Ordered by importance.", 10, 220, defFontId, black)
    loop
	fileName := Dir.Get (streamNumber)
	exit when fileName = ""
	if not (fileName (1) = '.') and length (fileName) > 4 and fileName (length (fileName) - 1) = '.' then
	    %GUI.AddLine (x, fileName)
	    new allFiles, upper (allFiles) + 1
	    allFiles (upper (allFiles)) := fileName
	end if
    end loop
    for i : 1 .. upper (allFiles) - 1
	for j : 1 .. upper (allFiles) - 1
	    if allFiles (j) > allFiles (j + 1) then
		var tmp := allFiles (j)
		allFiles (j) := allFiles (j + 1)
		allFiles (j + 1) := tmp
	    end if
	end for
    end for
    for i : 1 .. upper (allFiles)
	GUI.AddLine (x, allFiles (i))
    end for
    Dir.Close (streamNumber)
    GUI.SetTopLine (x, 1)
    loop
	exit when GUI.ProcessEvent
    end loop
    GUI.ResetQuit
    Window.Select (defWinID)
    GUI.CloseWindow (winID)
    result allFiles (choseNum)
end LoadFileWindow
% file open window
proc NullSaveProc (x : string)

end NullSaveProc
fcn SaveFileWindow () : string
    var winID : int := Window.Open ("position:top;left,graphics:200;100")
    Pic.ScreenLoad("media/gradient-light.jpg",0,-150,picCopy)
    var x : int := GUI.CreateTextField (10, 50, 180, "myprog.t", NullSaveProc)

    Font.Draw ("Name your file.", 10, 80, defFontId, black)



    Draw.FillBox (20, 10, maxx - 20, 40, gray)
    Font.Draw ("Save", 80, 22, defFontId, black)
    View.Update
    delay (500)
    loop
	exit when GUI.ProcessEvent
	var tx, ty, tb : int := 0
	mousewhere (tx, ty, tb)
	if tb > 0 and ty < 40 and tx < maxx then
	    exit
	end if
    end loop
    var txt := GUI.GetText (x)
    Window.Select (defWinID)
    GUI.CloseWindow (winID)
    result txt
end SaveFileWindow



function ptinrect (h, v, x1, v1, x2, v2 : int) : boolean
    result (h > x1) and (h < x2) and (v > v1) and (v < v2)
end ptinrect
proc LoadToBox (filename : string, tb : ^EditTextBoxClass)

    tb -> ClearText ()
    tb -> moddable := false
    var thl : ^TuringHighlighter
    new thl
    thl -> Construct (filename)
    thl -> WriteToBox (tb)
    tb -> moddable := true
end LoadToBox
proc PlayTour ()
    var d, btn : int
    for i : 1 .. 3
	var p1 := Pic.FileNew ("media/Tour/"+ intstr(i) +".gif")
	Pic.SetTransparentColor (p1, brightmagenta)
	%Pic.ScreenLoad("media/Tour/2.jpg",0,0,picMerge)
	var s1 := Sprite.New (p1)
	Sprite.SetPosition (s1, 0, 0, false)
	Sprite.Show (s1)
	delay (1000)
	loop
	    mousewhere (d, d, btn)
	    exit when btn > 0
	end loop
	Sprite.Hide (s1)
	Sprite.Free(s1)
    end for
end PlayTour
proc EditFileGui ()
    var fileName := ""
    GUI.SetBackgroundColor (gray)
    var textBox : ^EditTextBoxClass
    new textBox
    textBox -> Initialize (2, 2, maxx - 2, maxy - 50)
    textBox -> moddable := false
    textBox -> AddLine ("% welcome to Turing in Turing!")
    textBox -> AddLine ("% start writing a program or press open to load a sample")
    textBox -> AddLine ("put \"Hello World!\"")
    for i : 1 .. 15
	textBox -> AddLine ("")
    end for
    textBox -> moddable := true
    %var quitBtn : int := GUI.CreateButton (635, 570, 0, "Quit", GUI.Quit)
    %var saveBtn : int := GUI.CreateButton (570, 570, 0, "Save", SaveFile)
    %var runBtn : int := GUI.CreateButton (500, 570, 0, "Run", RunProc)
    Pic.ScreenLoad ("media/button bar.bmp", 0, maxy - 47, picCopy)

    var grad := Pic.FileNew ("media/gradient.gif")
    var sprite := Sprite.New (grad)
    Sprite.SetPosition (sprite, 0, 0, true)
    Sprite.Show (sprite)
    Sprite.Hide (sprite)
    Music.PlayFileReturn ("media/sounds/blip 9.wav")
    View.Update
    loop
	textBox -> moddable := true
	exit when GUI.ProcessEvent
	Text.Locate (1, 1)
	var tx, ty, tb : int := 0
	mousewhere (tx, ty, tb)
	if ptinrect (tx, ty, 150, maxy - 50, maxx, maxy) and tb > 0 then
	    Sprite.SetPosition (sprite, tx, ty, true)
	    Sprite.Show (sprite)
	    delay (100)
	    Sprite.Hide (sprite)
	    Music.PlayFileReturn ("media/sounds/blip 9.wav")
	    if ptinrect (tx, ty, 400, maxy - 50, 530, maxy) and tb > 0 then
		% quit button
		View.Set ("graphics:800;600,offscreenonly,buttonbar")
		Pic.ScreenLoad ("media/EndScreen.JPG", 0, 0, picCopy)
		%delay(5000)
		exit
	    elsif ptinrect (tx, ty, 660, maxy - 50, maxx, maxy) and tb > 0 then
		% run button

		textBox -> SaveToFile ("progtest.txt")
		RunProgram ()
		delay (500)
	    elsif ptinrect (tx, ty, 275, maxy - 50, 400, maxy) and tb > 0 then
		% save button
		if fileName = "" then
		    fileName := "programs/" + SaveFileWindow ()
		end if
		if fileName ~= "" then
		    textBox -> SaveToFile (fileName)
		end if
		textBox -> moddable := false
		GUI.Refresh
		textBox -> moddable := true
	    elsif ptinrect (tx, ty, 530, maxy - 50, 660, maxy) and tb > 0 then
		% tour button
		PlayTour
	    elsif ptinrect (tx, ty, 150, maxy - 50, 275, maxy) and tb > 0 then
		% open button
		fileName := "programs/" + LoadFileWindow ()
		LoadToBox (fileName, textBox)
		textBox -> SetTopLine (1)
	    end if
	end if
	View.Update
    end loop
end EditFileGui
