initialize-release
initialize

	super initialize.
	self 
		scriptEditor: DRCScriptEditor new;
		beNotSaving;
		savedObjects: OrderedCollection new;
		tapePath: 'no tape selected'; 
		saved: true;
		pauseTotalTime: 0;
		fileChooser: self createFileChooser;
		pauseStartTime: 0.