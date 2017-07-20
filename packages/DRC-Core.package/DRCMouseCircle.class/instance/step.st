stepping and presenter
step

	self comeToFront.
	self timeToLive > 0 ifTrue: [self decreaseTimeToLive].
	self timeToLive = 0 ifTrue: [self delete].
	