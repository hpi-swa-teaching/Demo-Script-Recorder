event-handling
nextEventToPlay

	| nextEvent currentPointInTime nextPointInTime |
	
	self checkEOF ifTrue: [^ MorphicUnknownEvent new setType: #EOF argument: nil].
	
	currentPointInTime := Time millisecondClockValue.
	nextEvent := self tapeStream next.
	nextPointInTime := self deltaTimeFor: nextEvent until: currentPointInTime.
	
	(currentPointInTime < self currentTimeStamp) ifTrue: [^ self handleInvalidTimestamp: currentPointInTime.].
	self currentTimeStamp: currentPointInTime.
	(currentPointInTime >= nextPointInTime) ifTrue: [^ self handleMouseEvent: nextEvent at: nextPointInTime.].
		
	self setTapeStreamToLastEvent. 
	
	self lastEvent ifNil: [^ nil].
	
	^ self calculateMouseMovementFor: nextEvent at: currentPointInTime until: nextPointInTime.