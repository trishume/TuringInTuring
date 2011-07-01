View.Set ("graphics:500,500")
var xm : int := 210
var ym : int := 319
put "3D rendering sphere outline (slowly)"
View.Update
for x : -9 .. -1
    %put "in for loop 1"
    for y : -18 .. 18
	%put "in for loop 2"

	%splitting up the calculation. Turing can't handle very much recursive parsing
	var sn1 : real := 200.0 * cosd (x * 20) * sind (y * 10) * cosd (xm)
	var sn2 : real := 200.0 * cosd (y * 10) * sind (xm)
	var num1 : int := (round (sn1 + sn2) + maxx ()) div 2
	var sn3 : real := 200.0 * sind (x * 20) * sind (y * 10) * cosd (ym)
	var sn4 : real := 200.0 * cosd (y * 10) * cosd (xm)
	var sn5 : real := 200.0 * cosd (x * 20) * sind (y * 10) * sind (xm)
	var sn6 : real := round (sn3 + (sn4 - sn5) * sind (ym))
	var num2 : int := (sn6 + maxy ()) div 2
	Draw.FillOval (num1, num2, 1, 1, black)
	Text.Locate (2, 1)
	put "finished calc ", y, " for ring #", (10 - round (abs (x)))
    end for
end for
View.Update
Text.Locate (2, 1)
put "done"
