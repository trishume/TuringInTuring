
class OutputHandler
	 export er,de,inf,out,construct,wa,fatal,print
	 deferred proc construct()
	 deferred proc er(s : string)
	 deferred proc fatal(s : string)
	 deferred proc wa(s : string)
	 deferred proc de(s : string)
	 deferred proc inf(s : string)
	 deferred proc out(s : string)
	 deferred proc print(s : string)
end OutputHandler
% print output
class PrintOutputHandler
	 inherit OutputHandler
	 import DEBUG
	 body proc construct()
		  %inf("started output with print stream")
	 end construct
	 body proc er(s : string)
		  Text.Locate(1,1)
		  put "ERROR: ",s
		  quit : 97336
	 end er
	 body proc de(s : string)
		  if DEBUG then put "DEBUG: ",s end if
	 end de
	 body proc inf(s : string)
		  put "INFO: ",s
	 end inf
	 body proc out(s : string)
		  put s
	 end out
	 body proc print(s : string)
		  put s ..
	 end print
end PrintOutputHandler
fcn newPrintOutputHandler() : ^OutputHandler
	 var o : ^OutputHandler
	 new PrintOutputHandler, o
	 o -> construct()
	 result o
end newPrintOutputHandler
% text box output
class TextBoxOutputHandler
	 inherit OutputHandler
	 import GUI
	 var textBox : int
	 body proc construct()
		  textBox := GUI.CreateTextBoxFull(0, 0, maxx, maxy,GUI.INDENT,defFontId)
		  inf("started output with print stream")
	 end construct
	 body proc er(s : string)
		  GUI.AddLine (textBox,"ERROR: "+s)
	 end er
	 body proc fatal(s : string)
		  GUI.AddLine (textBox,"FATAL ERROR: "+s)
		  quit
	 end fatal
	 body proc wa(s : string)
		  GUI.AddLine (textBox,"WARNING: "+s)
	 end wa
	 body proc de(s : string)
		  GUI.AddLine (textBox,"DEBUG: "+s)
	 end de
	 body proc inf(s : string)
		  GUI.AddLine (textBox,"INFO: "+s)
	 end inf
	 body proc out(s : string)
		  GUI.AddLine (textBox,s)
	 end out
	 body proc print(s : string)
		  GUI.AddText (textBox,s)
	 end print
end TextBoxOutputHandler
fcn newTextBoxOutputHandler() : ^OutputHandler
	 var o : ^OutputHandler
	 new TextBoxOutputHandler, o
	 o -> construct()
	 result o
end newTextBoxOutputHandler
