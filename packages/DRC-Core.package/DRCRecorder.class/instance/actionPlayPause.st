actions
actionPlayPause

	(self recorder recorderState = #play)  
		ifTrue: [self actionPause]
		ifFalse: [(self recorder recorderState = #record)
					ifTrue: [] 
					ifFalse: [(self recorder recorderState = #suspendedPlay)
								ifTrue: [self actionResume]
								ifFalse: [self actionPlay]]].
