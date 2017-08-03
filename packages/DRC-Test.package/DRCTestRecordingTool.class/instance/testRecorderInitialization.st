as yet unclassified
testRecorderInitialization 

	self 
		assert: (self recordingTool savedObjects isEmpty) equals: true;
		assert: (self recordingTool tapePath) equals: 'no tape selected';
		assert: (self recordingTool saved) equals: true;
		assert: (self recordingTool pauseTotalTime) equals: 0;
		assert: (self recordingTool pauseStartTime) equals: 0;
		assert: (self recordingTool tape) equals: nil;
		assert: (self recordingTool currentTimestamp) equals: nil;
		assert: (self recordingTool deltaTime) equals: nil;
		assert: (self recordingTool recHand) equals: nil;
		assert: (self recordingTool playHand) equals: nil;
		assert: (self recordingTool lastEvent) equals: nil;
		assert: (self recordingTool lastDeltaPosition) equals: nil;
		assert: (self recordingTool tapeStream) equals: nil;
		assert: (self recordingTool mouseCircle) equals: nil;
		assert: (self recordingTool fileChooser class) equals: FileChooser.
	  