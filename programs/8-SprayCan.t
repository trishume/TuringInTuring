%Spray Can version 1 by Mr. Reid started March 25, 2010

var x, y, z : int := 0
var sprayColour : int := 197
var spraySize : int := 20

procedure SprayCan (x, y : int)
    var h, v : int := 0
    randint (h, -spraySize, spraySize)
    randint (v, -spraySize, spraySize)
    randint (sprayColour, 0, 255)
    drawdot (x + h, y + v, sprayColour)
    delay (2)
end SprayCan


loop
    mousewhere (x, y, z)
    if z = 1 then
        SprayCan (x, y)
    end if
end loop
