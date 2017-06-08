accessing
togglePaused

	self paused 
		ifTrue: [self paused: false]  
		ifFalse: [self paused: true].