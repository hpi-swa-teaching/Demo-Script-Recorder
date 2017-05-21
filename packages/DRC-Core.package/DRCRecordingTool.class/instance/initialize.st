initialize-release
initialize

	super initialize.
	self recorder: DRCRecorder new.
	self scriptEditor: DRCScriptEditor new.