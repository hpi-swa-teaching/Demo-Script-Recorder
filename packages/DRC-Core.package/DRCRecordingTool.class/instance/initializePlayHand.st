pause-resume
initializePlayHand

	self playHand: (HandMorphForReplay new recordingTool: self).
	self playHand position: self tapeStream peek position.
	ActiveWorld addHand: self playHand.
	self playHand 
		newKeyboardFocus: ActiveWorld;
		userInitials: 'play' andPicture: nil.