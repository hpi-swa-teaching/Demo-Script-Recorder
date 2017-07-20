actions
actionRecordPause

	(self recorder recorderState = #record)  
		ifTrue: [self actionPause]
		ifFalse: [(self recorder recorderState = #play)
					ifTrue: [] 
					ifFalse: [(self recorder recorderState = #suspendedRecord)
								ifTrue: [self actionResume]
								ifFalse: [self actionRecord]]].
