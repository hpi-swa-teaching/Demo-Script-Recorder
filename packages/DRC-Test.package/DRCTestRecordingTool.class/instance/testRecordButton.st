as yet unclassified
testRecordButton

	|tool|
	tool := DRCRecordingTool new.
	
	self assert: tool recorder recorderState  equals: nil.
	tool actionRecord.
	self assert: tool recorder recorderState equals: #record.
	tool actionStop.
	self assert: tool recorder recorderState equals: nil.
	
	tool delete.