commands
play

	self isInWorld ifFalse: [^ self].
	self recreateStateFrom: (self savedObjects).
	self stop.
	tape ifNil: [^ self].
	tapeStream := ReadStream on: tape.
	self resumePlayIn: self world.
