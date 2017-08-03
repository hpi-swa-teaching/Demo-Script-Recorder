commands
record
		
	self 
		resetSavedState;
		saveStateIn: self savedObjects;
		writeCheck;
		addJournalFile;
		pauseTotalTime: self initialPauseTotalTime;
		tapeStream: (WriteStream on: (Array new: self initialTapeStreamSize));
		resumeRecord.		
