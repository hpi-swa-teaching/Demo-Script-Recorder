as yet unclassified
testRecordButtonColorChange
	
	"TODO: add test for color if not recording or pausing"
	|tool|
	tool := DRCRecordingTool new.
	
	tool actionRecord.
	[tool recorderState = #record] whileFalse: [].
	self assert: tool getColor equals: Color red.
	tool actionToggleRecordPause. "Maybe rename: actionPauseResume"
	self assert: tool getColor equals: Color orange.
	tool actionToggleRecordPause. "Maybe rename: actionPauseResume"
	[tool recorderState = #record] whileFalse: [].
	self assert: tool getColor equals: Color red.
	tool actionStop.
	
	tool delete.