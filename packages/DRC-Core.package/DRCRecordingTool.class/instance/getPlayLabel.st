building
getPlayLabel

	(self recorder state = #play)
		ifTrue: [^ 'Pause Playing']
		ifFalse:[(self recorder state = #suspendedPlay)
					ifTrue: [^ 'Resume Playing'.]
					ifFalse:[^ 'Play'.]]