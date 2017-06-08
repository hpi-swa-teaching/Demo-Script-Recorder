initialize-release
initialize

	super initialize.
	self 
		tapePath: 'no tape selected'; 
		saved: true;
		paused: false.
	self initializeMouseCircle.