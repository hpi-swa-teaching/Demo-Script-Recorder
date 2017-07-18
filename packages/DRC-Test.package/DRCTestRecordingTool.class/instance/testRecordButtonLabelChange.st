as yet unclassified
testRecordButtonLabelChange
	
	self assert: self tool getLabel equals: 'Start New Record'.
	self tool actionRecord.
	[self tool recorder state = #record] whileFalse: [].
	self assert: self tool getLabel equals: 'Pause Record'.
	self tool actionRecordPause. "Maybe rename: actionPauseResume"
	self assert: self tool getLabel equals: 'Resume Record'.
	self tool actionRecordPause. "Maybe rename: actionPauseResume"
	[self tool recorder state = #record] whileFalse: [].
	self assert: self tool getLabel equals: 'Pause Record'.
	self tool actionStop.
	self assert: self tool getLabel equals: 'Start New Record'.