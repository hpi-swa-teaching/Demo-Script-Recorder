as yet unclassified
testRecordButtonColorChange
	
	|tool|
	
	tool := DRCRecordingTool new.
	tool actionRecord.
	[tool recorderState = #record] whileFalse: [].
	self assert: tool getColor equals: Color red.
	tool actionToggleRecordPause. 
	self assert: tool getColor equals: Color orange.
	tool actionToggleRecordPause. 
	[tool recorderState = #record] whileFalse: [].
	self assert: tool getColor equals: Color red.
	tool actionStop.
	
	tool delete.