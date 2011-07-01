%Dice rolling program by Mr. Reid started on Oct.1, 2009

var dice1, dice2, dice3, total : int := 0
var x, y : int := 0
var h, v, z : int := 0

function ptinrect (h, v, x1, v1, x2, v2 : int) : boolean
    result (h > x1) and (h < x2) and (v > v1) and (v < v2)
end ptinrect
proc debug (str : string)
    Text.Locate (1, 1)
    put str
end debug

%draws the roll box
drawfillbox (400, 50, 500, 150, 10)
%starts the main loop
debug("starting...")
loop
    %waits for user to click in roll box
    delay(500)
    loop
	mousewhere (h, v, z)
	exit when z > 0 and ptinrect (h, v, 400, 50, 500, 150)
    end loop
    %clears the screen and redraws the roll box
    cls
    drawfillbox (400, 50, 500, 150, 10)
    %control location of dice
    x := 0
    y := 100
    %roll the dice
    randint (dice1, 1, 3)
    randint (dice2, 1, 3)
    randint (dice3, 1, 3)
    %add the dice
    total := dice1 + dice2 + dice3
    %show the dice rolls
    put dice1, " ", dice2, " ", dice3, "   ", total

    %check for triples
    if dice1 = dice2 and dice2 = dice3 then
	put "You got triples!"
    end if
    %check for doubles
    if dice1 = dice2 or dice1 = dice3 or dice2 = dice3 then
	put "You got doubles"
    end if

    %draw the first dice
    drawfillbox (x + 200, y + 200, x + 300, y + 300, blue)

    if dice1 = 1 then
	drawfilloval (x + 250, y + 250, 10, 10, 10)
    end if

    if dice1 = 2 then
	drawfilloval (x + 230, y + 270, 10, 10, 10)
	drawfilloval (x + 270, y + 230, 10, 10, 10)
    end if

    if dice1 = 3 then
	drawfilloval (x + 250, y + 250, 10, 10, 10)
	drawfilloval (x + 230, y + 270, 10, 10, 10)
	drawfilloval (x + 270, y + 230, 10, 10, 10)
    end if

    %change location
    x := 150
    %draw the second dice
    drawfillbox (x + 200, y + 200, x + 300, y + 300, blue)

    if dice2 = 1 then
	drawfilloval (x + 250, y + 250, 10, 10, 10)
    end if

    if dice2 = 2 then
	drawfilloval (x + 230, y + 270, 10, 10, 10)
	drawfilloval (x + 270, y + 230, 10, 10, 10)
    end if

    if dice2 = 3 then
	drawfilloval (x + 250, y + 250, 10, 10, 10)
	drawfilloval (x + 230, y + 270, 10, 10, 10)
	drawfilloval (x + 270, y + 230, 10, 10, 10)
    end if

    %change location
    x := 300
    %draw third dice
    drawfillbox (x + 200, y + 200, x + 300, y + 300, blue)

    if dice3 = 1 then
	drawfilloval (x + 250, y + 250, 10, 10, 10)
    end if

    if dice3 = 2 then
	drawfilloval (x + 230, y + 270, 10, 10, 10)
	drawfilloval (x + 270, y + 230, 10, 10, 10)
    end if

    if dice3 = 3 then
	drawfilloval (x + 250, y + 250, 10, 10, 10)
	drawfilloval (x + 230, y + 270, 10, 10, 10)
	drawfilloval (x + 270, y + 230, 10, 10, 10)
    end if
end loop
