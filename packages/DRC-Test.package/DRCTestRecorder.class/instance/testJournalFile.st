as yet unclassified
testJournalFile 

	|tool|
	tool := DRCRecordingTool new.
	self assert: tool recorder journalFile notNil equals: false.
	tool actionRecord.
	self assert: tool recorder journalFile notNil equals: true.
	tool actionStop.
	
	tool delete.