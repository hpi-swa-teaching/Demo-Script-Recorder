initialize-release
initialize

	super initialize.
	self recorder: DRCRecorder new.
	self scriptEditor: DRCScriptEditor new.
	
	"change to other place?"
	self disableStopButton.