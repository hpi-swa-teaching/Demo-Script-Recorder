as yet unclassified
testIsSaving

	| tool |
	
	tool := DRCRecordingTool new.
	tool beNotSaving.
	self assert: tool tape notNil equals: false.
	tool 
		actionRecord;
		actionStop.
	self assert: tool tape notNil equals: true.
	
	tool delete.