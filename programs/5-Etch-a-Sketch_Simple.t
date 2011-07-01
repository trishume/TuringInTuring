% This is a simple etch-a-sketch program
% Started by Mr. Reid on March 7, 2006



function Pt_In_Rect (x, y, x1, y1, x2, y2 : int) : boolean
    result (x > x1) and (x < x2) and (y > y1) and (y < y2)
end Pt_In_Rect

var h, v, button, z : int := 0
var shade : int := 5
var radius : int := 10
var done : boolean := false


drawbox (200, 100, 600, 300, black)
drawfillbox (200, 50, 250, 90, 1)
drawfillbox (250, 50, 300, 90, 2)
drawfillbox (550, 10, 600, 40, black)

drawfilloval (100, 300, 20, 20, black)
drawfilloval (100, 250, 10, 10, black)
drawfilloval (100, 200, 5, 5, black)

loop
    Mouse.Where (h, v, button)    
    if Pt_In_Rect (h, v, 200, 100, 600, 300) and (button = 1) then
	drawfilloval (h, v, radius, radius, shade)
    elsif Pt_In_Rect (h, v, 200, 50, 250, 90) and (button = 1) then
	shade := 1
    elsif Pt_In_Rect (h, v, 250, 50, 300, 90) and (button = 1) then
	shade := 2
    elsif Pt_In_Rect (h, v, 90, 290, 110, 310) and (button = 1) then
	radius := 20
    elsif Pt_In_Rect (h, v, 95, 245, 105, 255) and (button = 1) then
	radius := 10
    elsif Pt_In_Rect (h, v, 95, 195, 105, 205) and (button = 1) then
	radius := 5
    elsif Pt_In_Rect (h, v, 550, 10, 600, 40) and (button = 1) then
	done := true
    end if
    exit when done
end loop
