Test-DRCMouseCircle
testMouseCircleInitialization 

	|circle|
	circle := DRCMouseCircle new.
	self assert: circle lifeTime equals: -1.
	self assert: [circle vertices notNil].
	self assert: circle color equals: Color red.
	self assert: circle vertices size equals: 101.