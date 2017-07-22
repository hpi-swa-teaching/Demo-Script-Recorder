initialize-release
initialize

	super initialize.
	self recorder: self. 
	self recorder recordingTool: self.
	self 
		scriptEditor: DRCScriptEditor new;
		beNotSaving;
		disableStopButton; 
		savedObjects: OrderedCollection new;
		currentObjectState: OrderedCollection new;
		tapePath: 'no tape selected'; 
		saved: true;
		pauseTotalTime: 0;
		fileChooser: self createFileChooser;
		pauseStartTime: 0.