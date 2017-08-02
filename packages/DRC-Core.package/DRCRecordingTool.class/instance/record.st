commands
record
		
	self resetSavedState.
	self isSaving ifTrue: [self saveStateIn: self savedObjects.].
	self
		writeCheck;
		addJournalFile;
		pauseTotalTime: 0;
		tapeStream: (WriteStream on: (Array new: 10000));
		resumeRecord.		
