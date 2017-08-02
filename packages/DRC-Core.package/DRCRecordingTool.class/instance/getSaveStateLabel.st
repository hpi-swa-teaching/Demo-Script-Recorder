building
getSaveStateLabel

	self isSaving 
		ifTrue: [^ 'Save State: On'] 
		ifFalse:  [^ 'Save State: Off']