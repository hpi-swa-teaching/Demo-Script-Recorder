event-handling
calculateMouseMovementFor: anEvent at: aTimestamp until: aFutureTimestamp
	
	| lastEventPosition deltaPosition |
	
	lastEventPosition := self lastEvent position.
	deltaPosition := self calculateCurrentDeltaPositionFor: anEvent from: lastEventPosition at: aTimestamp until: aFutureTimestamp.
	(deltaPosition = self lastDeltaPosition) ifTrue: [^ nil].
	self lastDeltaPosition: deltaPosition.
	
	^ MouseMoveEvent new
		setType: #mouseMove 
		startPoint: self lastEvent position endPoint: lastEventPosition + deltaPosition
		trail: #() buttons: self lastEvent buttons hand: nil stamp: aTimestamp.