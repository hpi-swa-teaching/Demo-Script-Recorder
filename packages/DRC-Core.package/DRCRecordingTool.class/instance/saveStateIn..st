recording-state
saveStateIn: aCollection
	
	aCollection removeAll.
	(self recordingTool dependents size = 0) "Only necessary for testing :("
		ifFalse: [ActiveWorld submorphsDo: [:object |  (self hasEqualHashWith: object) 
			ifFalse: [aCollection add: object veryDeepCopy]]].