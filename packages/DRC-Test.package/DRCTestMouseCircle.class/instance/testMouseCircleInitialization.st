as yet unclassified
testMouseCircleInitialization 

	self assert: self circle timeToLive equals: -1.
	self assert: [self circle vertices notNil].
	self assert: self circle color equals: Color red.
	self assert: self circle vertices size equals: 101.
	self assert: self circle radius equals: 40.
	self assert: self circle defaultTimeToLive equals: 20.