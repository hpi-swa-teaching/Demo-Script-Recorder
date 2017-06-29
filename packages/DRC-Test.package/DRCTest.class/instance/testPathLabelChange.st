Test-DRCRecordingTool
testPathLabelChange

	|recordingTool|
	recordingTool := DRCRecordingTool new.
	self assert: recordingTool recorder tapePath equals: 'no tape selected'.
	recordingTool actionRecord.
	self assert: recordingTool recorder tapePath equals: 'unsaved tape'.
	recordingTool actionStop.
	self assert: recordingTool recorder tapePath equals: 'unsaved tape'.
	recordingTool delete.