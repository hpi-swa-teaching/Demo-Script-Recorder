building
getLabel

	self recorder state = #record ifTrue: [^ 'Pause Record'.] 
								   ifFalse:[
									(self recorder state = #suspendedRecord) ifTrue: [^ 'Resume Record'.] 
								  		 ifFalse:[^ 'Start New Record'.]]