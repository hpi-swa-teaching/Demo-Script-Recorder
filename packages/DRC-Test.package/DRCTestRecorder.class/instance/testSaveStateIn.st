as yet unclassified
testSaveStateIn

	self assert: (self recorder savedObjects isEmpty) equals: true.
	
	self recorder saveStateIn: self recorder savedObjects.
	self assert: (self recorder savedObjects isEmpty) equals: true.