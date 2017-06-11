initialize-release
initialize

	super initialize.
	self 
		tapePath: 'no tape selected'; 
		saved: true;
		paused: false;
		pauseTotalTime: 0;
		pauseStartTime: 0.
	self initializeMouseCircle.