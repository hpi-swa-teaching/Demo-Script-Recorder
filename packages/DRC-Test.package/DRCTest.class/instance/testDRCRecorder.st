testing
testDRCRecorder

	|recordingTool|
	recordingTool := DRCRecordingTool new.
	self assert: recordingTool recorder tape notNil  equals: false.
	recordingTool actionRecord.
	recordingTool actionEditScript.
	recordingTool actionStop.
	self assert: recordingTool recorder tape notNil equals: true.
	recordingTool scriptEditor delete.
	recordingTool delete.
	
	.