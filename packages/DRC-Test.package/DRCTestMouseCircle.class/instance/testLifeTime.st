as yet unclassified
testLifeTime

	self assert: self circle timeToLive equals: self deadTime.
	self circle decreaseTimeToLive.
	self assert: self circle timeToLive equals: (self deadTime - 1).
