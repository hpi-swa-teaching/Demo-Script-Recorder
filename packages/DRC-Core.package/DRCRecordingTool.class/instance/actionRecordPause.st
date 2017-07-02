actions
actionRecordPause

	(self recorder state = #record)  
		ifTrue: [self actionPause]
		ifFalse: [(self recorder state = #play)
					ifTrue: [] 
					ifFalse: [(self recorder state = #suspendedRecord)
								ifTrue: [self actionResume]
								ifFalse: [self actionRecord]]].
