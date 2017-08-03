event-handling
nextEventToPlay

	| nextEvent currentPointInTime nextPointInTime |
	
	self checkEOF ifTrue: [^ MorphicUnknownEvent new setType: #EOF argument: nil].
	
	currentPointInTime := Time millisecondClockValue.
	nextEvent := self tapeStream next.
	nextPointInTime := self deltaTimeFor: nextEvent until: currentPointInTime.
	(currentPointInTime < self currentTimestamp) ifTrue: [^ self handleInvalidTimestamp: currentPointInTime].
	self currentTimestamp: currentPointInTime.
	(currentPointInTime >= nextPointInTime) ifTrue: [nextEvent := nextEvent copy setTimeStamp: nextPointInTime. 
														self handleMouseEvent: nextEvent at: nextPointInTime. 
														^ nextEvent].
	self setTapeStreamToLastEvent.
	self lastEvent ifNil: [^ nil].
	
	^ self calculateMouseMovementFor: nextEvent at: currentPointInTime until: nextPointInTime