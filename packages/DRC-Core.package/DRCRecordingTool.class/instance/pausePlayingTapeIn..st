pause/resume
pausePlayingTapeIn: aWorld

	self recorderState: #suspendedPlay.
	self playHand halo ifNotNil: [self playHand halo delete].
	self playHand delete.
	aWorld removeHand: self playHand.
	aWorld firstHand showHardwareCursor: true.
	self playHand: nil
