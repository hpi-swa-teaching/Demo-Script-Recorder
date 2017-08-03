as yet unclassified
testSaveStateIn

	self assert: (self recordingTool savedObjects isEmpty) equals: true.
	
	self recordingTool saveStateIn: self recordingTool savedObjects.
	self assert: (self recordingTool savedObjects isEmpty) equals: true.