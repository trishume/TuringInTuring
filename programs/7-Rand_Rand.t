% Mr. Reid's Random Random
% Started on Oct.22, 2007
var x, y, button : int := 0
var size, col, font, num : int := 0
loop
    randint (size, 12, 144)
    randint (num, 1, 100)
    randint (col, 1, 100)
    mousewhere (x, y, button)
    font := Font.New ("times:" + intstr (size))
    Font.Draw (intstr (num), x, y, font, col)
    delay (100)
    exit when button = 1
end loop
put "Good-bye"
