event handling
deltaTimeFor: anEvent until: aTimestamp.

	self deltaTime ifNil: [self deltaTime: (aTimestamp - anEvent timeStamp)].
	^ (anEvent timeStamp + self deltaTime)