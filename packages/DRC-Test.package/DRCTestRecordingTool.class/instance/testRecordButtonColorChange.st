as yet unclassified
testRecordButtonColorChange
	
	"TODO: add test for color if not recording or pausing"
	|tool|
	tool := DRCRecordingTool new.
	
	tool actionRecord.
	[tool recorder recorderState = #record] whileFalse: [].
	self assert: tool getColor equals: Color red.
	tool actionRecordPause. "Maybe rename: actionPauseResume"
	self assert: tool getColor equals: Color orange.
	tool actionRecordPause. "Maybe rename: actionPauseResume"
	[tool recorder recorderState = #record] whileFalse: [].
	self assert: tool getColor equals: Color red.
	tool actionStop.
	
	tool delete.