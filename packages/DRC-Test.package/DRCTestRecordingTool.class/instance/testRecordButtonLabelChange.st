as yet unclassified
testRecordButtonLabelChange
	
	|tool|
	tool := DRCRecordingTool new.
	
	self assert: tool getLabel equals: 'Start New Record'.
	tool actionRecord.
	[tool recorder recorderState = #record] whileFalse: [].
	self assert: tool getLabel equals: 'Pause Record'.
	tool actionRecordPause. "Maybe rename: actionPauseResume"
	self assert: tool getLabel equals: 'Resume Record'.
	tool actionRecordPause. "Maybe rename: actionPauseResume"
	[tool recorder recorderState = #record] whileFalse: [].
	self assert: tool getLabel equals: 'Pause Record'.
	tool actionStop.
	self assert: tool getLabel equals: 'Start New Record'.
	
	tool delete.