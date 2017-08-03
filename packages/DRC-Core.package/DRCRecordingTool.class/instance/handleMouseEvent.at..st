event-handling
handleMouseEvent: aEvent at: aTimestamp

	aEvent isMouse 
		ifTrue: [	self lastEvent: aEvent.
				aEvent isMouseDown ifTrue: [self visualizeMouseEvent: aEvent.].]
		ifFalse: [self lastEvent: nil].