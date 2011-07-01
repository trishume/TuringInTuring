TURING IN TURING
BY Tristan Hume

My major project is an interpreter capable of running turing programs.

HOW TO USE

When you open the program you are presented with an editor.
YOu can type your own code into the box and press run to execute it.
The editor doesn't function entirely like a normal multi-line text box 
because of the difficulty of coding one. Fun Fact: a good rich text editor is really
hard to program because of problems like wrapping,sizing,scrolling,etc...

You can also open a variety of sample programs that I have collected. 

Click the Tour button in the editor to learn more.

HOW IT WORKS

First, the code is saved to a file. The program then uses Sys.Exec 
to run the java program that parses the file. The java program takes the file, 
parses it and translates it in to an easier to parse syntax. You can view the output
in the file ast.txt. 

The Turing program takes this text file and parses it into a data structure called an
AST (Abstract Syntax Tree.) Then the interpreter gets to work. It uses complex recursion to
walk down the tree. When It encounters a node, it performs the action associated with it.

EXAMPLE
Say you have a program that contains the line Sys.Exec("ed")
This is how it would be executed:

- First, the parser parses the code in to the form (CALL (. Sys Exec) "ed")
- The turing program parses the intermediate representation into a tree.
- Then the interpreter starts walking the tree:
	- When it finds the CALL node, it walks to it's first child and finds a . node
	- It then finds the two children of the dot. 
	- It looks up the first child (Sys) and finds that it is a built in module.
	- It then looks up the function Exec in the module Sys.
	- It returns the function that it found to the CALL node.
	- The CALL node then passes the parameter ("ed") to the function's code and runs it.
	- The CALL node then returns the result of the Sys.Exec function to whoever called it.

SUPPORTED CODE CONSTRUCTS

-variables
-functions and procedures
-built in functions
-loops and for loops
-functions as variables
-records
-dynamic typing
-conditions (if,elsif,else)
-boolean logic (or,and,xor,not)
-integer math (+,-,*,div,mod)
-real math (+,-,*,div,mod)
-equality (=,~=)
-rudimentary error handling

UNSUPPORTED FEATURES

-arrays
-automatic type promotion (int + real)
-classes and objects
-pointers

TROUBLESHOOTING

some problems you may encounter:
-stuck on parsing file: 
	You may not have java installed. The Turing program can not run the java program.
-when I try to view some files, There are no lines, just boxes: 
	I wrote some of the files on my my mac.
	Mac's have different line endings which do not work correctly


FOLDER STRUCTURE

antlr/
	Contains files dealing with the parser.
	The parser is generated with the antlr parser generator from the file TinT2.g
docs/
	Extra documentation files.
other/
	Support files and scripts. Probably only usable on my mac.
advertising/
	The link to the advertising website and the documentation.
gui/
	My modified GUI library and the files dealing with the editor GUI.
interpreter/
	The actual interpreter. Mostly support files.
	The main file of interest is TuringInterpreter.t
collections/
	I did not write most of the code in this folder.
	It is a turing linked list and hash map library.
media/
	Pictures, sound, etc...
programs/
	All the sample programs that can be run.
	The editor also saves files here.
tdocparse/
	My ruby program that parses the turing documentation and generates function interfaces.
	The program is gen.rb, the generated interfaces are in gendefs.t