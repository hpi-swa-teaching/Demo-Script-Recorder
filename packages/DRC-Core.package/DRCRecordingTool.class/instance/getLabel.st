building
getLabel

	self recorder state = #record ifTrue: [^ 'Stop Record'.] 
								   ifFalse:[^ 'Start New Record'.]