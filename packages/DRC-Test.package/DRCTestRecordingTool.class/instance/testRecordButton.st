as yet unclassified
testRecordButton

	|tool|
	tool := DRCRecordingTool new.
	
	self assert: tool recorder state  equals: nil.
	tool actionRecord.
	self assert: tool recorder state equals: #record.
	tool actionStop.
	self assert: tool recorder state equals: nil.
	
	tool delete.