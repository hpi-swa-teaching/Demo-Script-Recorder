commands
play

	(self savedObjects notEmpty) ifTrue: [self recreateStateFrom: (self savedObjects)].
	self stop.
	tape ifNil: [^ self].
	tapeStream := ReadStream on: tape.
	self resumePlay.
