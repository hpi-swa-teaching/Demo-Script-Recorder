recording-state
recreateStateFrom: aCollection

	self world submorphsDo: [:object | (self hasEqualHashWith: object) 
											ifFalse: [object delete]].
				aCollection do: [ :object | self world addMorph: (object veryDeepCopy)].
		