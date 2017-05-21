pause/resume
resumeRecordIn: aWorld

	recHand := aWorld activeHand ifNil: [aWorld primaryHand].
	recHand newKeyboardFocus: aWorld.
	recHand addEventListener: self.

	lastEvent := nil.
	state := #record.

	self synchronize.
