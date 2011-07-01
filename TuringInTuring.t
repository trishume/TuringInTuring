% TURING IN TURING
% A turing program, that runs turing programs!
% My major project for Gr. 11 Programming ICS3UG
% June 20, 2011
% --------------------------------------------

% import my alternate gui library
import GUI in "gui/altgui/GUI",
			EditTextBoxClass in "gui/altgui/guiclass/EditTextBoxClass.tu",
			TextFieldClass in "gui/altgui/guiclass/TextFieldClass.tu"

%turns of auto parsing for when I am emulating windows on my mac                       
const MAC := false
%allows debug messages
const DEBUG := false
%allow dramatic pauses
const DRAMA := true
const DRAMATIME := 500

%collections
include "collections/THash.t"
%AST parser support files
include "interpreter/Output.t"
include "interpreter/Token.t"
include "interpreter/Lexer2.t"
include "interpreter/AstLexer.t"
include "interpreter/AST.t"
include "interpreter/Parser2.t"
include "interpreter/AstParser.t"
%interpreter support files
include "interpreter/Symbol.t"
include "interpreter/Numerics.t"
include "interpreter/Scope.t"
include "tdocparse/BuiltInSymbols.t"
include "interpreter/TuringInterpreter.t"
include "interpreter/RunProgram.t"
%gui
include "gui/TuringHighlighter.t"
include "gui/EditGui.t"

View.Set ("graphics:800;600,offscreenonly,nobuttonbar")

% title screen
Pic.ScreenLoad("media/Space-crop.jpg",0,0,picCopy)
var dummy : int
Mouse.ButtonWait("up",dummy,dummy,dummy,dummy)
cls

% start the editor gui
EditFileGui()
