Test-DRCRecordingTool
testRecordingToolBuilder
| tool |
tool := DRCRecordingTool new.
self assert: (tool labelString) equals: 'Demo Recorder Pro Evolution X'.

tool delete.