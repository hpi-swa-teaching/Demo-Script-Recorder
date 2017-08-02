as yet unclassified
testRecordingToolInitialize

	|tool|
	tool := DRCRecordingTool new.
	
	self assert: (tool class) equals: DRCRecordingTool.
	self assert: (tool scriptEditor class) equals: DRCScriptEditor.
	self assert: (tool isSaving) equals: false.
 
	tool delete.