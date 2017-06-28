commands
play

	self isInWorld ifFalse: [^ self].
	self recreateState.
	self stop.
	tape ifNil: [^ self].
	tapeStream := ReadStream on: tape.
	self resumePlayIn: self world.
