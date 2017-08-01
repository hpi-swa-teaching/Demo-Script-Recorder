pause/resume
resume

	self pauseTotalTime:  self pauseTotalTime + (Time millisecondClockValue - self pauseStartTime).
	self recorderState = #suspendedPlay 
		ifTrue: [self resumePlay].
	self recorderState = #suspendedRecord 
		ifTrue: [self resumeRecord].

