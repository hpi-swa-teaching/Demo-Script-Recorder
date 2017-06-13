building
getColor

	self recorder state = #record ifTrue: [^ Color red.] 
								   ifFalse:[
									(self recorder state = #suspendedRecord) ifTrue: [^ Color orange.] 
								  		 ifFalse:[^ Color gray darker.]]