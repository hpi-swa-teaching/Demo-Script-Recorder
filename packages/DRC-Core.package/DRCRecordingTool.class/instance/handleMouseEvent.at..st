event-handling
handleMouseEvent: aEvent at: aTimestamp

	| nextEvent |
	
	nextEvent := aEvent copy setTimeStamp: aTimestamp.
	aEvent isMouse 
		ifTrue: [	self lastEvent: aEvent.
				aEvent isMouseDown ifTrue: [self visualizeMouseEvent: aEvent].] 							
		ifFalse: [self lastEvent: nil].
		
	^ nextEvent