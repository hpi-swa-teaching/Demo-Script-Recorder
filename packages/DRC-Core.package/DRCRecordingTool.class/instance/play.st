commands
play

	(self savedObjects notEmpty) ifTrue: [self recreateStateFrom: (self savedObjects)].
	self stop.
	self tape ifNil: [^ self].
	self tapeStream: (ReadStream on: self tape).
	self resumePlay.
