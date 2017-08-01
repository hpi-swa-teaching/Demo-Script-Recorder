as yet unclassified
testLifeTime

	self assert: self circle  timeToLive equals: self deadTime.
	self circle decreaseLifeTime.
	self assert: self circle timeToLive equals: (self deadTime - 1).
