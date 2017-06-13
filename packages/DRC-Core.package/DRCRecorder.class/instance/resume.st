pause/resume
resume

	self resumeIn: self currentWorld.
	self pauseStartTime: Time millisecondClockValue.