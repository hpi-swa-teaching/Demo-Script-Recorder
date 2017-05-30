commands
stop
	
	state = #record ifTrue:
		[tape := tapeStream contents.
		saved := false].
	journalFile ifNotNil:
		[journalFile close].
	self pauseIn: self world.
	tapeStream := nil.
	state := nil.
	recordMeter ifNotNil: [recordMeter width: 1].

	self checkTape.