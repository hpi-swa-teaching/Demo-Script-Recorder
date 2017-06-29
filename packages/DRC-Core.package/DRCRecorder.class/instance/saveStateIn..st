recording-state
saveStateIn: aCollection
	
	aCollection removeAll.
	self recordingTool dependents size = 0 "Only necessary for testing :("
		ifFalse: [	self world submorphsDo: [:object |  ((self recordingTool dependents at: 1) hash = object hash) ifFalse: [aCollection add: object veryDeepCopy]]].
		
	"self savedObjects: (OrderedCollection new: self world submorphs size streamContents: 
		[ :stream | | deepCopier |
			deepCopier := DeepCopier new: self initialDeepCopierSize.
			self world submorphsDo: 
				[:object | stream nextPut: (object veryDeepCopyUsing: deepCopier)]]).
	"