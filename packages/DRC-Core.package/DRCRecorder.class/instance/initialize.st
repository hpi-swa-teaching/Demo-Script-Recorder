initialize-release
initialize

	super initialize.
	self 
		savedObjects: OrderedCollection new;
		currentObjectState: OrderedCollection new;
		tapePath: 'no tape selected'; 
		saved: true;
		pauseTotalTime: 0;
		fileChooser: self createFileChooser;
		pauseStartTime: 0.