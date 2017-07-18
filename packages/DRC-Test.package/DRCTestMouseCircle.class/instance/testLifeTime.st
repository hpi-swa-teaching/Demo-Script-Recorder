as yet unclassified
testLifeTime

	self assert: self circle  timeToLive equals: -1.
	self circle decreaseLifeTime.
	self assert: self circle timeToLive equals: -2.
