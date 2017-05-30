initialize-release
initialize

	super initialize.
	self 
		tapePath: 'unsaved tape'; 
		recordingTool: nil;
		saved: true.