event-handling
calculateCurrentDeltaPositionFor: anEvent from: aPosition at: aTimestamp until: aFutureTimestamp

	 ^ (anEvent position - aPosition) * (aTimestamp - self lastEvent timeStamp) // (aFutureTimestamp - self lastEvent timeStamp).