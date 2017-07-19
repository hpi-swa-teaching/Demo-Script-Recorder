as yet unclassified
testMouseCircleInitialization 

	self assert: self circle timeToLive equals: self deadTime.
	self assert: [self circle vertices notNil].
	self assert: self circle color equals: self defaultColor.
	self assert: self circle vertices size equals: self defaultVerticesSize.
	self assert: self circle radius equals: self defaultRadiusSize .
	self assert: self circle defaultTimeToLive equals: self defaultTimeToLive.