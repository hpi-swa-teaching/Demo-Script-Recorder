history
lastStoredRun
	^ ((Dictionary new) add: (#errors->((Set new) add: #testRecordButtonColorChange; yourself)); add: (#passed->((Set new) add: #testDRCRecorder; add: #testNumber; add: #testRecordButtonLabelChange; yourself)); add: (#failures->((Set new))); add: (#timeStamp->'28 June 2017 9:28:09 am' asTimeStamp); yourself)