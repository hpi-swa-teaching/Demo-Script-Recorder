pause-resume
resumePlay

	self 
		initializePlayHand;
		lastEvent: nil;
		lastDeltaPosition: (0 @ 0);
		recorderState: #play;
		synchronize.
