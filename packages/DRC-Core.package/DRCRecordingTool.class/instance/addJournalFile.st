initialize-release
addJournalFile

	'EventRecorder.tape' asFile delete.
	self journalFile ifNotNil: [self journalFile close].
	self journalFile: (FileStream newFileNamed: 'EventRecorder.tape').
	self journalFile nextPutAll:'Event Tape v1 ASCII'; cr.
