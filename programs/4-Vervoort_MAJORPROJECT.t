%im in the middle of added a start screen...
%should have a made arrays v.v 
%Variables
%var BOX : array 1 .. 13, 1 .. 2 of int
put "started"
var x, y : int := 450
var z, button : int := 0
var speed : int := 9
%var chars : array char of boolean
var leftwall : int := 10
var rightwall : int := 960
var bottomwall : int := 20
var topwall : int := 760
var timeRunning : int := 0
var boxx, boxx2, boxx3, boxx4, boxx5, boxx6, boxx7, boxx8, boxx9, boxx10, boxx11, boxx12, boxx13, boxx14, boxx15, boxx16, boxx17, boxx18, boxx19, boxx20, boxx21, boxx22, boxx23 : int := 90
var boxy, boxy2, boxy3, boxy4, boxy5, boxy6, boxy7, boxy8, boxy9, boxy10, boxy11, boxy12, boxy13, boxy14, boxy15, boxy16, boxy17, boxy18, boxy19, boxy20, boxy21, boxy22, boxy23 : int := 850
var lives : int := 3
put "declared vars"
function ptinrect (h, v, x1, v1, x2, v2 : int) : boolean
    result (h > x1) and (h < x2) and (v > v1) and (v < v2)
end ptinrect
%STARTING SCREENNN
procedure startscreen (bob : int)
		put "meta major project time!"
		put "Brandon Vervoot's slightly modified (fixed) major project,"
		put "Running (slowly) in my major project!"
		put "It's just like in Inception!"
		drawfillbox (400, 200, 600, 300, green)
		View.Update
    loop    
	buttonwait ("down", x, y, z, z)
	exit when ptinrect (x, y, 400, 200, 600, 300)
    end loop
end startscreen

/*fcn chars(theChr : int) : boolean
    var chrs : array char of boolean
    Input.KeyDown(chrs)
    result chrs(chr(theChr))
end chars*/

View.Set ("offscreenonly")
setscreen ("graphics:900;700")
%procedure for respawning the boxes randomly
procedure respawn ()
    randint (boxx, 0, 950)
    randint (boxy, 800, 1000)
end respawn
procedure respawn2 ()
    randint (boxx2, 0, 950)
    randint (boxy2, 800, 1000)
end respawn2
procedure respawn3 ()
    randint (boxx3, 0, 950)
    randint (boxy3, 800, 1000)
end respawn3
procedure respawn4 ()
    randint (boxx4, 0, 950)
    randint (boxy4, 800, 1000)
end respawn4
procedure respawn5 ()
    randint (boxx5, 0, 950)
    randint (boxy5, 800, 1000)
end respawn5
procedure respawn6 ()
    randint (boxx6, 0, 950)
    randint (boxy6, 800, 1000)
end respawn6
procedure respawn7 ()
    randint (boxx7, 0, 950)
    randint (boxy7, 800, 1000)
end respawn7
procedure respawn8 ()
    randint (boxx8, 0, 950)
    randint (boxy8, 800, 1000)
end respawn8
procedure respawn9 ()
    randint (boxy9, 800, 1000)
    randint (boxy9, 700, 1000)
end respawn9
procedure respawn10 ()
    randint (boxx10, 0, 950)
    randint (boxy10, 700, 1000)
end respawn10
procedure respawn11 ()
    randint (boxx11, 0, 950)
    randint (boxy11, 700, 1000)
end respawn11

procedure respawn12 ()
    randint (boxx12, 0, 950)
    randint (boxy12, 700, 1000)
end respawn12


procedure respawn13 ()
    randint (boxx13, 0, 950)
    randint (boxy13, 700, 1000)
end respawn13


procedure respawn14 ()
    randint (boxx14, 0, 950)
    randint (boxy14, 700, 1000)
end respawn14

procedure respawn15 ()
    randint (boxx15, 0, 950)
    randint (boxy15, 700, 1000)
end respawn15

procedure respawn16 ()
    randint (boxx16, 0, 950)
    randint (boxy16, 700, 1000)
end respawn16

procedure respawn17 ()
    randint (boxx17, 0, 950)
    randint (boxy17, 700, 1000)
end respawn17

procedure respawn18 ()
    randint (boxx18, 0, 950)
    randint (boxy18, 700, 1000)
end respawn18

procedure respawn19 ()
    randint (boxx19, 0, 950)
    randint (boxy19, 700, 1000)
end respawn19

procedure respawn20 ()
    randint (boxx20, 0, 950)
    randint (boxy20, 700, 1000)
end respawn20

procedure respawn21 ()
    randint (boxx21, 0, 950)
    randint (boxy21, 700, 1000)
end respawn21

procedure respawn22 ()
    randint (boxx22, 0, 950)
    randint (boxy22, 700, 1000)
end respawn22

procedure respawn23 ()
    randint (boxx23, 0, 950)
    randint (boxy23, 700, 1000)
end respawn23

respawn2
respawn3
respawn4
respawn5
respawn6
respawn7
respawn8
respawn9
respawn10
respawn11
respawn12
respawn13
respawn14
respawn15
respawn16
respawn17
respawn18
respawn19
respawn20
respawn21
respawn22



%loop for the drawing the boxes and score
startscreen (567)
put "past starting screen"
%exit
var lastFrame, startTime : int := Time.Elapsed()
loop
		var speedFactor : int := (Time.Elapsed () - lastFrame) div 70
		timeRunning := Time.Elapsed () - startTime
		lastFrame := Time.Elapsed ()
    cls
		%exit

    drawfillbox (boxx, boxy, boxx + 50, boxy + 50, brightred)
    boxy -= 6 * speedFactor


    drawfillbox (boxx2, boxy2, boxx2 + 50, boxy2 + 50, brightred)
    boxy2 -= 6 * speedFactor

    drawfillbox (boxx3, boxy3, boxx3 + 50, boxy3 + 50, brightred)
    boxy3 -= 6 * speedFactor

    drawfillbox (boxx4, boxy4, boxx4 + 50, boxy4 + 50, brightred)
    boxy4 -= 6 * speedFactor

    drawfillbox (boxx5, boxy5, boxx5 + 50, boxy5 + 50, brightred)
    boxy5 -= 6 * speedFactor

    drawfillbox (boxx6, boxy6, boxx6 + 50, boxy6 + 50, brightred)
    boxy6 -= 6 * speedFactor
    put "POINTS= ", timeRunning

    if timeRunning > 5000 then %pink boxes



	drawfillbox (boxx7, boxy7, boxx7 + 50, boxy7 + 50, 36)
	boxy7 -= 8 * speedFactor


	drawfillbox (boxx8, boxy8, boxx8 + 50, boxy8 + 50, 36)
	boxy8 -= 8 * speedFactor

	drawfillbox (boxx9, boxy9, boxx9 + 50, boxy9 + 50, 36)
	boxy9 -= 8 * speedFactor

    end if
    if timeRunning > 10000 then%blue boxes

	drawfillbox (boxx10, boxy10, boxx10 + 50, boxy10 + 50, 52)
	boxy10 -= 10 * speedFactor


	drawfillbox (boxx11, boxy11, boxx11 + 50, boxy11 + 50, 52)
	boxy11 -= 10 * speedFactor

	drawfillbox (boxx12, boxy12, boxx12 + 50, boxy12 + 50, 52)
	boxy12 -= 10 * speedFactor


    end if
    if timeRunning > 20000 then%green boxes

	drawfillbox (boxx13, boxy13, boxx13 + 50, boxy13 + 50, 47)
	boxy13 -= 12 * speedFactor

	drawfillbox (boxx14, boxy14, boxx14 + 50, boxy14 + 50, 47)
	boxy14 -= 12 * speedFactor

	drawfillbox (boxx15, boxy15, boxx15 + 50, boxy15 + 50, 47)
	boxy15 -= 12 * speedFactor
    end if
    if timeRunning > 30000 then%orange boxes

	drawfillbox (boxx16, boxy16, boxx16 + 50, boxy16 + 50, 14)
	boxy16 -= 14 * speedFactor


	drawfillbox (boxx17, boxy17, boxx17 + 50, boxy17 + 50, 14)
	boxy17 -= 14 * speedFactor

	drawfillbox (boxx18, boxy18, boxx18 + 50, boxy18 + 50, 14)
	boxy18 -= 14 * speedFactor
    end if
    if timeRunning > 40000 then%yelowboxes              
	drawfillbox (boxx19, boxy19, boxx19 + 50, boxy19 + 50, 41)
	boxy19 -= 16 * speedFactor

	drawfillbox (boxx20, boxy20, boxx20 + 50, boxy20 + 50, 41)
	boxy20 -= 16 * speedFactor

	drawfillbox (boxx21, boxy21, boxx21 + 50, boxy21 + 50, 41)
	boxy21 -= 16 * speedFactor
    end if
    %Movment keys and bounderies
    %Input.KeyDown (chars)
    if chars (205) and x < rightwall then
	x := x + speed  * speedFactor
    end if
    if chars (203) and x > leftwall then
	x := x - speed  * speedFactor
    end if
    if chars (200) and y < topwall then
	y := y + speed  * speedFactor
    end if
    if chars (208) and y > bottomwall then
	y := y - speed  * speedFactor
    end if
    %delay (10)

    %Dying
    if x > boxx and x < boxx + 50 and y > boxy and y < boxy + 50 then
	lives -= 3

    end if

    if x > boxx2 and x < boxx2 + 50 and y > boxy2 and y < boxy2 + 50 then
	lives -= 3

    end if

    if x > boxx3 and x < boxx3 + 50 and y > boxy3 and y < boxy3 + 50 then
	lives -= 3

    end if

    if x > boxx4 and x < boxx4 + 50 and y > boxy4 and y < boxy4 + 50 then
	lives -= 3

    end if

    if x > boxx5 and x < boxx5 + 50 and y > boxy5 and y < boxy5 + 50 then
	lives -= 3

    end if
    if x > boxx6 and x < boxx6 + 50 and y > boxy6 and y < boxy6 + 50 then
	lives -= 3

    end if
    if x > boxx7 and x < boxx7 + 50 and y > boxy7 and y < boxy7 + 50 then
	lives -= 3

    end if

    if x > boxx8 and x < boxx8 + 50 and y > boxy8 and y < boxy8 + 50 then
	lives -= 3

    end if

    if x > boxx9 and x < boxx9 + 50 and y > boxy9 and y < boxy9 + 50 then
	lives -= 3

    end if

    if x > boxx10 and x < boxx10 + 50 and y > boxy10 and y < boxy10 + 50 then
	lives -= 3

    end if

    if x > boxx11 and x < boxx11 + 50 and y > boxy11 and y < boxy11 + 50 then
	lives -= 3

    end if

    if x > boxx12 and x < boxx12 + 50 and y > boxy12 and y < boxy12 + 50 then
	lives -= 3
    end if

    if x > boxx13 and x < boxx13 + 50 and y > boxy13 and y < boxy13 + 50 then
	lives -= 3
    end if

    if x > boxx14 and x < boxx14 + 50 and y > boxy14 and y < boxy14 + 50 then
	lives -= 3
    end if

    if x > boxx15 and x < boxx15 + 50 and y > boxy15 and y < boxy15 + 50 then
	lives -= 3
    end if

    if x > boxx16 and x < boxx16 + 50 and y > boxy16 and y < boxy16 + 50 then
	lives -= 3
    end if

    if x > boxx17 and x < boxx17 + 50 and y > boxy17 and y < boxy17 + 50 then
	lives -= 3
    end if

    if x > boxx18 and x < boxx18 + 50 and y > boxy18 and y < boxy18 + 50 then
	lives -= 3
    end if

    if x > boxx19 and x < boxx19 + 50 and y > boxy19 and y < boxy19 + 50 then
	lives -= 3
    end if

    if x > boxx20 and x < boxx20 + 50 and y > boxy20 and y < boxy20 + 50 then
	lives -= 3
    end if

    if x > boxx21 and x < boxx21 + 50 and y > boxy21 and y < boxy21 + 50 then
	lives -= 3
    end if

    if x > boxx22 and x < boxx22 + 200 and y > boxy22 and y < boxy22 + 200 then
	lives -= 3
    end if

    if x > boxx23 and x < boxx23 + 200 and y > boxy23 and y < boxy23 + 200 then
	lives -= 3
    end if
    %Respawing..and lives
    drawfillbox (x, y, x + 25, y + 25, black)
    View.Update
    if boxy < 0 then
	respawn
    end if
    if boxy2 < 0 then
	respawn2
    end if

    if boxy3 < 0 then
	respawn3
    end if

    if boxy4 < 0 then
	respawn4
    end if

    if boxy5 < 0 then
	respawn5
    end if


    if boxy6 < 0 then
	respawn6
    end if

    if boxy7 < 0 then
	respawn7
    end if

    if boxy8 < 0 then
	respawn8
    end if

    if boxy9 < 0 then
	respawn9
    end if

    if boxy10 < 0 then
	respawn10
    end if

    if boxy11 < 0 then
	respawn11
    end if


    if boxy12 < 0 then
	respawn12
    end if

    if boxy13 < 0 then
	respawn13
    end if


    if boxy14 < 0 then
	respawn14
    end if

    if boxy15 < 0 then
	respawn15
    end if

    if boxy16 < 0 then
	respawn16
    end if

    if boxy17 < 0 then
	respawn17
    end if

    if boxy18 < 0 then
	respawn18
    end if

    if boxy19 < 0 then
	respawn19
    end if

    if boxy20 < 0 then
	respawn20
    end if

    if boxy21 < 0 then
	respawn21
    end if

    if boxy22 < 0 then
	respawn22
    end if

    if boxy23 < 0 then
	respawn23
    end if

    exit when lives < 3
end loop
Text.Locate(2,1)
put "DEAD!"
View.Update