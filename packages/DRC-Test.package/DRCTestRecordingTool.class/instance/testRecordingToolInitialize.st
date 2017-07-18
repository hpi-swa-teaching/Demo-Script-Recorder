as yet unclassified
testRecordingToolInitialize
| tool |
tool := DRCRecordingTool new.
self assert: (tool recorder class) equals: DRCRecorder.
self assert: (tool scriptEditor class) equals: DRCScriptEditor.
self assert: (tool isSaving) equals: false.

tool delete. 