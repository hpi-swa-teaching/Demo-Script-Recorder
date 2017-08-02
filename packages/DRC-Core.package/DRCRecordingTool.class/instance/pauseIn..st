pause/resume
pauseIn: aWorld

	self recorderState = #play 
		ifTrue: 	[self pausePlayingTapeIn: aWorld].
	
	self recorderState = #record 
		ifTrue: 	[self pauseRecordingTape].

