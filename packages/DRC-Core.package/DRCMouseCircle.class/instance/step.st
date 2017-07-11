stepping and presenter
step

	self comeToFront.
	self timeToLive > 0 ifTrue: [self decreaseLifeTime].
	self timeToLive = 0 ifTrue: [self delete].
	