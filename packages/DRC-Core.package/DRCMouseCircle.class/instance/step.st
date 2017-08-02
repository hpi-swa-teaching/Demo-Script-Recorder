stepping
step

	self comeToFront.
	self timeToLive > 0 ifTrue: [self decreaseTimeToLive.] ifFalse: [self delete.].
	