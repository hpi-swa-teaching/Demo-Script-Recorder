as yet unclassified
testRecordingToolInitialize

self assert: (self tool recorder class) equals: DRCRecorder.
self assert: (self tool scriptEditor class) equals: DRCScriptEditor.
self assert: (self tool isSaving) equals: false.
 