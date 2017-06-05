stepping and presenter
step

	self comeToFront.
	self decrementExistingTime.
	(self existingTime > 0) ifTrue: [self visible: true.].
	(self existingTime = 0) ifTrue: [self visible: false.] 

