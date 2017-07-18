as yet unclassified
testMouseCircleInitialization 

	|circle|
	circle := DRCMouseCircle new.
	self assert: circle timeToLive equals: -1.
	self assert: [circle vertices notNil].
	self assert: circle color equals: Color red.
	self assert: circle vertices size equals: 101.
	self assert: circle radius equals: 40.
	self assert: circle defaultTimeToLive equals: 20.