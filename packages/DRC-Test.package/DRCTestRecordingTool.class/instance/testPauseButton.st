as yet unclassified
testPauseButton

	|tool|
	tool := DRCRecordingTool new.
	
	self assert: tool recorder pauseStartTime equals: 0.
	tool actionRecordPause.
	tool actionRecordPause.
	tool actionRecordPause.
	self assert: [tool recorder pauseStartTime > 0].
	tool actionStop.
	
	tool delete.