recording-state
saveStateIn: aCollection
	
	aCollection removeAll.
	self isSaving
		ifTrue: [ActiveWorld submorphsDo: [:object |  (self hasEqualHashWith: object) 
			ifFalse: [aCollection add: object veryDeepCopy.]]].