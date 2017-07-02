Test-DRCRecorder
testDRCRecorder

	|recordingTool scriptEditor|
	recordingTool := DRCRecordingTool new.
	self assert: recordingTool recorder tape notNil  equals: false.
	recordingTool actionRecord.
	scriptEditor := recordingTool actionEditScript.
	recordingTool actionStop.
	self assert: recordingTool recorder tape notNil equals: true.
	scriptEditor delete.
	recordingTool delete.