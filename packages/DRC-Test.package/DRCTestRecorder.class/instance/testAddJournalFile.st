as yet unclassified
testAddJournalFile

	| recorder |
	
	recorder := DRCRecordingTool new.
	recorder addJournalFile.
	self assert: (FileDirectory new fileExists: recorder journalFile fullName) equals: true. 
