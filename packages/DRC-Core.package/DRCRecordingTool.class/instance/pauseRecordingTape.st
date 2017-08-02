pause-resume
pauseRecordingTape

	self recorderState: #suspendedRecord.
	self recHand removeEventListener: self.
	self recHand: nil
