initialize-release
initialize

	super initialize.
	self recorder: DRCRecorder new.
	self recorder recordingTool: self.
	self scriptEditor: DRCScriptEditor new.
	self beNotSaving.
	"change to other place?"
	self disableStopButton.