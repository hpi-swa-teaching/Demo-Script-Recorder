building
getPlayLabel

	(self recorder recorderState = #play)
		ifTrue: [^ 'Pause Playing']
		ifFalse:[(self recorder recorderState = #suspendedPlay)
					ifTrue: [^ 'Resume Playing'.]
					ifFalse:[^ 'Play'.]]