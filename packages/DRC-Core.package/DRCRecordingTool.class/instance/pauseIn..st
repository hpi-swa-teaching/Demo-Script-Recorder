pause/resume
pauseIn: aWorld
	"Suspend playing or recording, either as part of a stop command,
	or as part of a project switch, after which it will be resumed."

	recorderState = #play ifTrue:
		[recorderState := #suspendedPlay.
		playHand halo ifNotNil: [playHand halo delete].
		playHand delete.
		aWorld removeHand: playHand.
		aWorld firstHand showHardwareCursor: true.
		playHand := nil].
	recorderState = #record ifTrue:
		[recorderState := #suspendedRecord.
		recHand removeEventListener: self.
		recHand := nil].

