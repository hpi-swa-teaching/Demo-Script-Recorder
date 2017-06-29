commands
record
		
		self isInWorld ifFalse: [^ self].	
		self saveStateIn: (self savedObjects).
		self stop.
		self writeCheck.
		self addJournalFile.
		self pauseTotalTime: 0.
	
		
		
		tapeStream := WriteStream on: (Array new: 10000).
		self resumeRecordIn: self world.		
