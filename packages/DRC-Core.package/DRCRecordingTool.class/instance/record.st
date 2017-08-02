commands
record
		
	self resetSavedState.
	self isSaving ifTrue: [self saveStateIn: self savedObjects.].
	self
		writeCheck;
		addJournalFile;
		pauseTotalTime: self initialPauseTotalTime;
		tapeStream: (WriteStream on: (Array new: self initialTapeStreamSize));
		resumeRecord.		
