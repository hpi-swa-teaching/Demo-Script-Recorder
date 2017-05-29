testing
testDRCRecorder

	|recordingTool|
	recordingTool := DRCRecordingTool new.
	recordingTool actionRecord.
	recordingTool actionEditScript.
	recordingTool actionStop.
	self assert: recordingTool recorder tape notNil equals: true.
	recordingTool delete.
	
	.