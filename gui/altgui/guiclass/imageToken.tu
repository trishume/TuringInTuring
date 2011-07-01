unit

class imageToken
    inherit lineToken
    export imgTokenPtr,SetImage
    type imgTokenPtr : ^imageToken
    var img : int
    
    proc SetImage(fname : string)
	img := Pic.FileNew(fname)
	width := Pic.Width(img)
	height := Pic.Height(img)
    end SetImage
    
    body proc DrawToken(x,y:int)
	Pic.Draw(img,x,y,picMerge)
    end DrawToken
end imageToken

