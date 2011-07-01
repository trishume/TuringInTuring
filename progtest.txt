% Features demo file!
% By Tristan Hume

% variables create themselves when they are needed,
% declarations are optional
bob := 1000
ed := (bob * 9) + 1000 - 999

% Everything is dynamically typed so the type in the declaration is ignored
var confusing : int := "This is not actually good form, but it works."

% it is customary to use the word "auto" or "a" as the type.
% Or you can use the type field for your own reference
var fred, jed : auto := 789

% you don't need to put the name of the function after the end keyword
fcn coolstuff (num : int) : auto
    put "It's over 9000!"
end

% Procs and functions are the same thing.
% You can call a function and ignore the return value
proc retself (x : a)
    result x
end

% if statements and comparisons work.
% it is not required to write "end if"
if ed > 9000
    coolstuff (retself (ed))
end

% Records are supported!
% they are completely dynamic too.
% You can assign any value (including functions) to any field
arec.hi := "This field was never declared, but now it exists!"
% assigning a function as a value and calling it
arec.functor := retself
put arec.functor (arec.hi)

% you can call almost all built in functions
delay (500)

% exit statements work everywhere
% including in the main program and functions
exit when false = true

% fully featured put command
put index ("bob hi bob", "hi") ..
put " was the index!"
put jed, fred

% full boolean logic
if jed = 789 and fred ~= 1337 then
    put "equal!"
end if

put "Echo time! Type exit to stop."
% loops!
loop
    % get statements
    get getvar : *
    exit when getvar = "exit"
    put getvar
end loop


% for loops
for x : 1 .. 6
    put "going " ..
end for

put "gone!"

put "DONE! You should be very amazed by now."
