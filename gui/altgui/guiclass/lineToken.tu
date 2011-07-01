unit

class lineToken
    export width,height,DrawToken,lineTokenPtr,clickEvent,SetClick
    var width,height : int
    
    var isClick : boolean := false
    var clickID : string
    var clickProc : procedure x (i : string)
    
    proc SetClick (id : string, cproc : procedure x (i : string))
	isClick := true
	clickID := id
	clickProc := cproc
    end SetClick
    
    type lineTokenPtr : ^lineToken
    deferred proc DrawToken(x,y : int)
    deferred proc clickEvent(x,y : int)
    
    body proc clickEvent (x, y : int)
	if isClick then
	    clickProc(clickID)
	end if
	
    end clickEvent
end lineToken

