% Random program started Dec. 9, 2008 by Mr. Reid

var x, y, size, shade : int := 0

loop
    randint (x, 0, 650)
    randint (y, 0, 450)
    randint (size, 10, 30)
    randint (shade, 0, 250)
    drawfilloval (x, y, size, size, shade)
    delay (5)
end loop
