as yet unclassified
testRecordButtonLabelChange
	
	|tool|
	tool := DRCRecordingTool new.
	
	self assert: tool getLabel equals: 'Start New Record'.
	tool actionRecord.
	[tool recorder recorderState = #record] whileFalse: [].
	self assert: tool getLabel equals: 'Pause Record'.
	tool actionToggleRecordPause. "Maybe rename: actionPauseResume"
	self assert: tool getLabel equals: 'Resume Record'.
	tool actionToggleRecordPause. "Maybe rename: actionPauseResume"
	[tool recorder recorderState = #record] whileFalse: [].
	self assert: tool getLabel equals: 'Pause Record'.
	tool actionStop.
	self assert: tool getLabel equals: 'Start New Record'.
	
	tool delete.