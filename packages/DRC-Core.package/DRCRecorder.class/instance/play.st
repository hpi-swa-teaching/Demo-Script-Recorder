commands
play

	self isInWorld ifFalse: [^ self].
	self stop.
	self paused: false.
	tape ifNil: [^ self].
	tapeStream := ReadStream on: tape.
	self resumePlayIn: self world.
