pause-resume
resumeRecord

	self recHand: (ActiveWorld activeHand ifNil: [ActiveWorld primaryHand]).
	self recHand 
		newKeyboardFocus: ActiveWorld;
		addEventListener: self.

	self 
		lastEvent: nil;
		recorderState: #record;
		synchronize.
