actions
actionPlayPause

	(self recorder state = #play)  
		ifTrue: [self actionPause]
		ifFalse: [(self recorder state = #record)
					ifTrue: [] 
					ifFalse: [(self recorder state = #suspendedPlay)
								ifTrue: [self actionResume]
								ifFalse: [self actionPlay]]].
