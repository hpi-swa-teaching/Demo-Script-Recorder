event-handling
synchronize
	
	self 
		currentTimeStamp: (Time millisecondClockValue - self pauseTotalTime);
		deltaTime: nil.