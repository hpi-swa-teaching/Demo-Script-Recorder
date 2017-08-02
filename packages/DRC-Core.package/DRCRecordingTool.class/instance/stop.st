commands
stop
	
	(self recorderState = #record) 
		ifTrue: [self tape: self tapeStream contents.
				self saved: false].
	(self journalFile) 
		ifNotNil:	[self journalFile close].
	self 
		pauseIn: ActiveWorld;
		tapeStream: nil;
		recorderState: nil;
		checkTape.
