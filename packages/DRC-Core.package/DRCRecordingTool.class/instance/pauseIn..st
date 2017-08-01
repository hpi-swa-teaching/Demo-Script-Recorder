pause/resume
pauseIn: aWorld

	self recorderState = #play 
		ifTrue: 	[self recorderState: #suspendedPlay.
				 self playHand halo ifNotNil: [self playHand halo delete].
				 self playHand delete.
				 aWorld removeHand: self playHand.
				 aWorld firstHand showHardwareCursor: true.
				 self playHand: nil].
	
	self recorderState = #record 
		ifTrue: 	[self recorderState: #suspendedRecord.
				 self recHand 
					removeEventListener: self.
				 self recHand: nil].

