building
getColor

	(self recorder recorderState = #record) 
		ifTrue: [^ Color red.] 
		ifFalse:[(self recorder recorderState = #suspendedRecord) 
					ifTrue: [^ Color orange.]
					ifFalse:[^ self userInterfaceTheme get: #color for: #PluggableButtonMorph.]]