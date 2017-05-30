building
getLabel

	self recorder state = #record ifTrue: [^ 'Stop recording'.] 
								   ifFalse:[^ 'Start recording'.]