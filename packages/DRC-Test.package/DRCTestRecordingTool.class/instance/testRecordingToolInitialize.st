as yet unclassified
testRecordingToolInitialize

	|tool|
	
	tool := DRCRecordingTool new.
	self 
		assert: (tool class) equals: DRCRecordingTool; 
		assert: (tool scriptEditor class) equals: DRCScriptEditor;
		assert: (tool isSaving) equals: false.
 
	tool delete.