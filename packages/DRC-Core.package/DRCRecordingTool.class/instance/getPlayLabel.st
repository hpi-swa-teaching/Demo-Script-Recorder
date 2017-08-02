building
getPlayLabel

	(self recorderState = #play)
		ifTrue: [^ 'Pause Playing']
		ifFalse:[(self recorderState = #suspendedPlay)
					ifTrue: [^ 'Resume Playing'.]
					ifFalse:[^ 'Play'.]]