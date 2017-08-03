as yet unclassified
testRecordButton

	| tool |
	
	tool := DRCRecordingTool new.
	self assert: tool recorderState  equals: nil.
	tool actionRecord.
	self assert: tool recorderState equals: #record.
	tool actionStop.
	self assert: tool recorderState equals: nil.
	
	tool delete.