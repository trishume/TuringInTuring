%Sample Quiz by Mr. Reid

var answer,score : int:=0
var answer2,answer3:string

put "Qu.1 What is the capital of Bulgaria?"
put " "
put "1 - Ottawa  2 - Toronto  3- Sofia"
get answer
answer := strint(answer)
if answer = 1 then
    put "Sorry, Ottawa is absolutely WRONG!"
    score-=2
end if

if answer = 2 then
    put "Sorry, Toronto is in Canada"
    score-=2
end if

if answer = 3 then
    put "You are a genius!"
    score+=5
end if

put "your score is ",score
 
delay(5000) 

if answer < 1 or answer >3 then
put "Read much??"
end if

put" "
put "Qu.2 What is the capital of Ontario?"
put" "
put "A - Ottawa  B - Toronto  C-Wawa"

get answer2

if answer2 = "b" or answer2 = "B" then
put "Very Good"
end if


put "Qu. 3 Who is the best teacher?"
put "Reid      Smith     Jones"

get answer3

if answer3 = "Reid" or answer3 = "reid" then
put "Smart kid!"
end if



