pause-resume
resumePlay

	self 
		initializePlayHand;
		lastEvent: nil;
		lastDelta: 0@0;
		recorderState: #play;
		synchronize.
