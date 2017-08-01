actions
actionToggleRecordPause

	(self recorderState = #record)  
		ifTrue: [self actionPause.]
		ifFalse: [(self recorderState = #play)
					ifFalse: [(self recorderState = #suspendedRecord)
								ifTrue: [self actionResume.]
								ifFalse: [self actionRecord.]]].
