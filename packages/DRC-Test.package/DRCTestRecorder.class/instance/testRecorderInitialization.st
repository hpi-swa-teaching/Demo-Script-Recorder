as yet unclassified
testRecorderInitialization 

	self assert: (self recorder savedObjects isEmpty) equals: true.
	self assert: (self recorder tapePath) equals: 'no tape selected'.
	self assert: (self recorder saved) equals: true.
	self assert: (self recorder pauseTotalTime) equals: 0.
	self assert: (self recorder pauseStartTime) equals: 0.     
	self assert: (self recorder tape) equals: nil.
	self assert: (self recorder time) equals: nil.
	self assert: (self recorder deltaTime) equals: nil.
	self assert: (self recorder recHand) equals: nil.
	self assert: (self recorder playHand) equals: nil.
	self assert: (self recorder lastEvent) equals: nil.
	self assert: (self recorder lastDelta) equals: nil.
	self assert: (self recorder tapeStream) equals: nil.
	self assert: (self recorder mouseCircle) equals: nil.
	self assert: (self recorder fileChooser class) equals: FileChooser.
	  