pause/resume
resume

	self resumeIn: self currentWorld.
	self pauseTotalTime:  self pauseTotalTime + (Time millisecondClockValue - self pauseStartTime).