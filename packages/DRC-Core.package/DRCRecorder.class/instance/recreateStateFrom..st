recording-state
recreateStateFrom: aCollection

	self world submorphsDo: [:object | ((self recordingTool dependents at: 1) hash = object hash) ifFalse: [object delete]].
	aCollection do: [ :object | self world addMorph: (object veryDeepCopy)].
		