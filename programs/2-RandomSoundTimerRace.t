% random number backround music timer sample program.
% ----------------------------------
% The fact that that we are marked on the prescence of timers,
% background sounds, and random numbers is entirely coincidental
setscreen ("offscreenonly")
var box1_x, box2_x : int := 50
var box1_rand, box2_rand : int := 0
drawline (500, 0, 500, 400, red) % finish line
put "Random number timer background music program!"
var starttime : int := Time.Elapsed()
put "starting..."
Music.PlayFileReturn ("media/sounds/crop-8bit.wav")
loop
    %drawbox (box1_x, 50, box1_x + 100, 80, blue)
    Pic.ScreenLoad ("media/car21go.gif", box1_x, 50, picCopy)
    Pic.ScreenLoad ("media/car10wk.gif", box2_x, 200, picCopy)
    View.Update
    exit when box1_x + 32 > 500 or box2_x + 32 > 500
    delay (30)
    drawfillbox (box1_x, 50, box1_x + 32, 80, white)
    drawfillbox (box2_x, 200, box2_x + 32, 230, white)
    randint (box1_rand, 1, 4)
    randint (box2_rand, 1, 4)
    box1_x := box1_x + box1_rand
    box2_x := box2_x + box2_rand    
end loop
%drawbox (box1_x, 50, box1_x + 100, 80, blue)
%drawbox (box2_x, 200, box2_x + 100, 230, red)
if box1_x + 32 > 500 then
    put "Blue Won after " ..
else
    put "Red Won after " ..
end if
var difftime : int := Time.Elapsed() - starttime
put difftime div 1000 ..
put " seconds!"
View.Update
Music.PlayFileStop()
