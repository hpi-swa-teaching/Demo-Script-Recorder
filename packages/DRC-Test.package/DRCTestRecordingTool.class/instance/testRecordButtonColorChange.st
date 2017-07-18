as yet unclassified
testRecordButtonColorChange
	
	"TODO: add test for color if not recording or pausing"
	
	|recordingTool|
	recordingTool := DRCRecordingTool new.
	recordingTool actionRecord.
	[recordingTool recorder state = #record] whileFalse: [].
	self assert: recordingTool getColor equals: Color red.
	recordingTool actionRecordPause. "Maybe rename: actionPauseResume"
	self assert: recordingTool getColor equals: Color orange.
	recordingTool actionRecordPause. "Maybe rename: actionPauseResume"
	[recordingTool recorder state = #record] whileFalse: [].
	self assert: recordingTool getColor equals: Color red.
	recordingTool actionStop.
	recordingTool delete.