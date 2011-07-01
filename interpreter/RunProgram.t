proc DrawCenter(str : string)
    cls
    Pic.ScreenLoad("media/gradient-light.jpg",0,0,picCopy)
    var infoFnt := Font.New("sans serif:27:bold")
    var width := Font.Width(str,infoFnt)
    Font.Draw(str,(maxx div 2) - (width div 2),(maxy div 2) + 10,infoFnt,red)
    Font.Free(infoFnt)
    View.Update
end DrawCenter
proc RunProgram ()
    handler (exceptNum)
	if exceptNum ~= 1337 then
	    if exceptNum ~= 10000 then
		put "OH NO! AN ERROR OCCURED"
		if exceptNum ~= 97336 then
		    put "Error Number: ", exceptNum
		    put "Error Message: ", Error.Msg (exceptNum)
		end if
	    else
		put "OH NO! AN ERROR OCCURED"
		put "Turing is feeling overly crappy at this time."
		put "There seems to be a bug in your program that caused turing to fail"
	    end if
	    put "move mouse out of window to close"
	    View.Update
	    delay (1000)
	    loop
		var tx, ty, tb : int := 0
		mousewhere (tx, ty, tb)
		exit when tx > maxx or ty > maxy or ty < 0 or tx < 0
	    end loop
	    GUI.CloseWindow (Window.GetActive ())
	else
	    GUI.CloseWindow (Window.GetActive ())
	end if
	return
    end handler
    var winID := Window.Open ("position:top;center,offscreenonly")
    
    Pic.ScreenLoad("media/gradient-light.jpg",0,0,picCopy)
    var output : ^OutputHandler := newPrintOutputHandler ()

     /*File.Copy (fname, "progtest.txt")

     if Error.Last ~= eNoError then
     output -> er ("Did not copy the file.")
     output -> er (Error.LastMsg)
     quit
     end if*/
    DrawCenter("Running Parser")
    if not MAC then
	%output -> inf ("Running Parser...")
	if not Sys.Exec ("ParseTuring.jar") then
	    output -> er ("Failed to run parser")
	end if
	loop
	    exit when File.Exists ("buildinfo.txt")
	end loop
	delay (500)
	var buildFile : int
	open : buildFile, "buildinfo.txt", get
	if not eof (buildFile) then
	    output -> out ("Found errors in file:")
	    var line : string
	    loop
		exit when eof (buildFile)
		get : buildFile, line : *
		output -> out (line)
	    end loop
	    close : buildFile
	    File.Delete ("buildinfo.txt")
	    quit
	end if
	close : buildFile
	delay (200)
    end if
    File.Delete ("buildinfo.txt")
    DrawCenter("Lexing AST")
    var lex : ^AstLexer
    new AstLexer, lex
    lex -> construct (output, "ast.txt")
    if DRAMA then delay(DRAMATIME) end if
				     /* loop
     var theT : ^Token := lex -> nextToken ()
     exit when theT -> token = tokens.EOF
     output -> out("CHAR " + intstr(lex -> p) + ": " + theT -> toString ())
     end loop
     */
    DrawCenter("Parsing AST")
    var parse : ^Parser
    new AstParser, parse
    parse -> construct (lex, output)
    var tree : ^ASTNode := parse -> parse ()
    if DRAMA then delay(DRAMATIME) end if
    %output -> inf ("parsed tree:")
    %tree -> getChild (1) -> printStringTree (output)
    %output -> out ("")
    %output -> inf ("starting program...")
    DrawCenter("Starting Program")
    if DRAMA then delay(DRAMATIME * 2) end if

    cls
    Window.Set(winID,"nooffscreenonly")
    Draw.FillBox (maxx - 10, maxy - 10, maxx, maxy, red)

    var interp : ^TuringInterpreter
    new TuringInterpreter, interp
    interp -> construct (output)
    interp -> RProgram (tree -> getChild (1))
    var dummy : string
    %get dummy : *
    Draw.FillBox (maxx - 20, maxy - 20, maxx, maxy, red)
    loop
	var tx, ty, tb : int := 0
	mousewhere (tx, ty, tb)
	if tb > 0 and tx > maxx - 20 and ty > maxy - 20 then
	    exit
	end if
    end loop
    GUI.CloseWindow (Window.GetActive ())
end RunProgram
