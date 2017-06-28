recording-state
recreateState

	self world submorphsDo: [:object | (object isKindOf: DRCRecordingTool) 
			 ifFalse: [object delete.]].
	self savedObjects do: [ :object | self world addMorph: object].
	"Transcript show: savedObjects submorphs."
	