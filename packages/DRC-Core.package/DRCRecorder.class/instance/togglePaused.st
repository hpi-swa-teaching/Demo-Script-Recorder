accessing
togglePaused

	self paused 
		ifTrue: [self paused: false.
				self pauseTotalTime:  self pauseTotalTime + (Time millisecondClockValue - self pauseStartTime).]  
		ifFalse: [self paused: true.
				self pauseStartTime: Time millisecondClockValue.].