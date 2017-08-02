recording-state
recreateStateFrom: aCollection

	ActiveWorld submorphsDo: [:object | (self hasEqualHashWith: object) 
											ifFalse: [object delete]].
	aCollection do: [ :object | ActiveWorld addMorph: (object veryDeepCopy)].
		