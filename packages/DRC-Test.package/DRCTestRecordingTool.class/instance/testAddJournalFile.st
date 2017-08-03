as yet unclassified
testAddJournalFile

	| tool |
	
	tool := DRCRecordingTool new.
	tool addJournalFile.
	self assert: (FileDirectory new fileExists: tool journalFile fullName) equals: true. 
