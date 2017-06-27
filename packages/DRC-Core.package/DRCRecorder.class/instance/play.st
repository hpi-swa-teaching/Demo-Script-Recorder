commands
play

	self isInWorld ifFalse: [^ self].
	(self world submorphs) do: [:object | object delete.].
	self recreateState.
	self stop.
	tape ifNil: [^ self].
	tapeStream := ReadStream on: tape.
	self resumePlayIn: self world.
