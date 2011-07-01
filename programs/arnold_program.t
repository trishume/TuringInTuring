% Mr. Reid's Arnold Program

var count, tries : int := 0
var answer : string := "hi"

%setscreen ("graphics:800;600")

loop
    put "Who stars in the Terminator movies?"
    get answer : *
    %put answer
    tries += 1
    if (index (answer, "gg") > 0) then
        count += 1
    end if
    if (index (answer, "sch") > 0) then
        count += 1
    end if
    %put count," - ", tries
    if count = 2 then
        put "Correct"
    elsif count = 1 then
        put "Close"
    else
        put "Incorrect"
    end if
    exit when count = 2
    if tries = 3 then
        put "Too many guesses."
    end if
    exit when tries = 3
    count := 0
end loop
