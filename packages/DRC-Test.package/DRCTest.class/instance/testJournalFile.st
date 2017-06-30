testing
testJournalFile

 	|recordingTool |
	recordingTool := DRCRecordingTool new.
	self assert: recordingTool recorder journalFile notNil  equals: false.
	recordingTool actionRecord.
	self assert: recordingTool recorder journalFile notNil equals: true.
	recordingTool actionStop.
	recordingTool delete.