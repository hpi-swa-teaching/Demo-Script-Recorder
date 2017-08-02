event-processing
handleKeyboardInput: aKeyboardEvent
	
	(aKeyboardEvent  keyValue = 27 "esc")
		ifTrue: [^ self actionStop].
	(aKeyboardEvent keyString = '<Cmd-p>' "CTRL--P")
		ifTrue: [(self recorderState = #record)
						ifTrue: [^ self actionPause].
				(self recorderState = #suspendedRecord)	
						ifTrue: [^ self actionResume].].