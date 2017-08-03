as yet unclassified
testRecorderInitialization 

	self 
		assert: (self recorder savedObjects isEmpty) equals: true;
		assert: (self recorder tapePath) equals: 'no tape selected';
		assert: (self recorder saved) equals: true;
		assert: (self recorder pauseTotalTime) equals: 0;
		assert: (self recorder pauseStartTime) equals: 0;
		assert: (self recorder tape) equals: nil;
		assert: (self recorder time) equals: nil;
		assert: (self recorder deltaTime) equals: nil;
		assert: (self recorder recHand) equals: nil;
		assert: (self recorder playHand) equals: nil;
		assert: (self recorder lastEvent) equals: nil;
		assert: (self recorder lastDelta) equals: nil;
		assert: (self recorder tapeStream) equals: nil;
		assert: (self recorder mouseCircle) equals: nil;
		assert: (self recorder fileChooser class) equals: FileChooser.
	  