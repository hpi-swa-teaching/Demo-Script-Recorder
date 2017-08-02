actions
actionTogglePlayPause

	(self recorderState = #play)  
		ifTrue: [self actionPause.]
		ifFalse: [(self recorderState = #record)
					ifFalse: [(self recorderState = #suspendedPlay)
								ifTrue: [self actionResume.]
								ifFalse: [self actionPlay.]]].

