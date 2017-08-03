event-handling
deltaTimeFor: anEvent until: aTimestamp

	| normalizedPointInTime |
	
	self deltaTime ifNil: [self deltaTime: (aTimestamp - anEvent timeStamp).].
	normalizedPointInTime := anEvent timeStamp + self deltaTime.
	
	^ normalizedPointInTime