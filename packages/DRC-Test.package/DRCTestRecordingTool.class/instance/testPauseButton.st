as yet unclassified
testPauseButton

	|tool|
	tool := DRCRecordingTool new.
	
	self assert: tool recorder pauseStartTime equals: 0.
	tool actionToggleRecordPause.
	tool actionToggleRecordPause.
	tool actionToggleRecordPause.
	self assert: [tool recorder pauseStartTime > 0].
	tool actionStop.
	
	tool delete.