commands
play

	self tape ifNil: [^ self].
	self savedObjects notEmpty ifTrue: [self recreateStateFrom: self savedObjects.].
	self
		tapeStream: (ReadStream on: self tape);
		resumePlay.
