commands
record
		
	self isInWorld ifFalse: [^ self].	
	self saveStateIn: (self savedObjects);
	stop;
	writeCheck;
	addJournalFile;
	pauseTotalTime: 0.
	tapeStream := WriteStream on: (Array new: 10000).
	self resumeRecordIn: self world.		
