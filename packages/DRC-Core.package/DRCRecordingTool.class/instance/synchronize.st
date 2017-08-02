event-handling
synchronize
	
	self 
		time: (Time millisecondClockValue - self pauseTotalTime);
		deltaTime: nil.