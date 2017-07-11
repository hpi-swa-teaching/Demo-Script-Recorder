initialize-release
initialize

	super initialize.
	self recorder: DRCRecorder new.
	self recorder recordingTool: self.
	self scriptEditor: DRCScriptEditor new.
	self isSaving: false.
	"change to other place?"
	self disableStopButton.