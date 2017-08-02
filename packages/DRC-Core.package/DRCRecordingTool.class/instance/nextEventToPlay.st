event-handling
nextEventToPlay

	| nextEvent now nextTime lastP delta |
	
	(self checkEOF)
		ifTrue:[^ MorphicUnknownEvent new setType: #EOF argument: nil].
		
	now := Time millisecondClockValue.
	nextEvent := self tapeStream next.
	nextTime := self deltaTimeFor: nextEvent until: now.
	
	(now < self time) 
		ifTrue: [	self time: now.
				self deltaTime: nil.
				^ nil].
			
	self time: now.
	(now >= nextTime) 
		ifTrue: [	nextEvent := nextEvent copy setTimeStamp: nextTime.
				(nextEvent isMouse) 
					ifTrue: [	self lastEvent: nextEvent.
							(nextEvent isMouseDown)
								ifTrue: [self visualizeMouseEvent: nextEvent].] 							
		ifFalse:[self lastEvent: nil].
		^nextEvent].
	self tapeStream skip: -1.
	
	self lastEvent ifNil: [^ nil].
	
	lastP := self lastEvent position.
	delta := self calculateCurrentDeltaFor: nextEvent from: lastP at: now until: nextTime.
	(delta = self lastDelta)
		ifTrue: [^ nil].
	self lastDelta: delta.
	
	^ MouseMoveEvent new
		setType: #mouseMove 
		startPoint: self lastEvent position endPoint: lastP + delta
		trail: #() buttons: self lastEvent buttons hand: nil stamp: now.