event-handling
synchronize
	
	self 
		currentTimestamp: (Time millisecondClockValue - self pauseTotalTime);
		deltaTime: nil.