testing
testDRCRecorder

	|recordingTool|
	recordingTool := DRCRecordingTool new.
	self assert: recordingTool recorder tape notNil  equals: false.
	recordingTool actionRecordStop.
	recordingTool actionEditScript.
	recordingTool actionRecordStop.
	self assert: recordingTool recorder tape notNil equals: true.
	recordingTool scriptEditor delete.
	recordingTool delete.
	
	.