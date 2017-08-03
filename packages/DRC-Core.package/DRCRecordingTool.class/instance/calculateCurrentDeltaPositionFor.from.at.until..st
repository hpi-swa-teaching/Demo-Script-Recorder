event-handling
calculateCurrentDeltaPositionFor: anEvent from: aPosition at: aTimestamp until: aFutureTimestamp

	| overallDeltaPosition stepRange |
		
	overallDeltaPosition	:= anEvent position - aPosition.
	stepRange := (aTimestamp - self lastEvent timeStamp) // (aFutureTimestamp - self lastEvent timeStamp).
	 
	^ overallDeltaPosition * stepRange