building
getLabel

	self recorder state = #record ifTrue: [^ 'Pause Record'.] 
								   ifFalse:[^ 'Start New Record'.]