building
getColor

	self recorder state = #record ifTrue: [^ Color red.] 
								   ifFalse:[^ Color orange.]