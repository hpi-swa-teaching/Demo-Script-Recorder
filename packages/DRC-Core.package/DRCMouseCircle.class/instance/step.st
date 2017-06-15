stepping and presenter
step

	self comeToFront.
	self lifeTime > 0 ifTrue: [self decreaseLifeTime].
	self lifeTime = 0 ifTrue: [self delete].
	