building
getLabel

	(self recorder recorderState = #record)
		ifTrue: [^ 'Pause Record']
		ifFalse:[(self recorder recorderState = #suspendedRecord)
					ifTrue: [^ 'Resume Record'.]
					ifFalse:[^ 'Start New Record'.]]