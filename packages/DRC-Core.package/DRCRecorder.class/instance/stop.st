commands
stop
	
	(recorderState = #record) 
		ifTrue: [tape := tapeStream contents.
				saved := false].
	(journalFile) 
		ifNotNil:	[journalFile close].
	self pauseIn: ActiveWorld.
	tapeStream := nil.
	recorderState := nil.
	(recordMeter) 
		ifNotNil: [recordMeter width: 1].
	self checkTape.
