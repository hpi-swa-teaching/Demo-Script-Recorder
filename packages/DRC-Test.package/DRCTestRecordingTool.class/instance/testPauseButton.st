as yet unclassified
testPauseButton

	|recordingTool|
	recordingTool := DRCRecordingTool new.
	self assert: recordingTool recorder pauseStartTime equals: 0.
	recordingTool actionRecordPause.
	recordingTool actionRecordPause.
	recordingTool actionRecordPause.
	self assert: [recordingTool recorder pauseStartTime > 0].
	recordingTool actionStop.
	recordingTool delete.