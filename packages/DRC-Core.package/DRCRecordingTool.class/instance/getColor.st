building
getColor

	(self recorder state = #record) 
		ifTrue: [^ Color red.] 
		ifFalse:[(self recorder state = #suspendedRecord) 
					ifTrue: [^ Color orange.]
					ifFalse:[^ self userInterfaceTheme get: #color for: #PluggableButtonMorph.]]