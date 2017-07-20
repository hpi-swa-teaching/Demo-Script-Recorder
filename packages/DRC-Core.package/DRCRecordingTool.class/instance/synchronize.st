event handling
synchronize
	
	self 
		pauseTime: 0;
		time: (Time millisecondClockValue - self pauseTotalTime);
		deltaTime: nil.