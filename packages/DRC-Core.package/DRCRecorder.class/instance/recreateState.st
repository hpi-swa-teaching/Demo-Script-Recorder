recording-state
recreateState

	self world submorphsDo: [:object | ((self recordingTool dependents at: 1) hash = object hash) ifFalse: [object delete]].
	self savedObjects do: [ :object | self world addMorph: (object veryDeepCopy)].
	"Transcript show: savedObjects submorphs."
	