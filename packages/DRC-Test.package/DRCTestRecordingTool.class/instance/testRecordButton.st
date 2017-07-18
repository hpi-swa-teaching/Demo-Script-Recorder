as yet unclassified
testRecordButton

	|recordingTool|
	recordingTool := DRCRecordingTool new.
	self assert: recordingTool recorder state  equals: nil.
	recordingTool actionRecord.
	self assert: recordingTool recorder state equals: #record.
	recordingTool actionStop.
	self assert: recordingTool recorder state equals: nil.
	recordingTool delete.