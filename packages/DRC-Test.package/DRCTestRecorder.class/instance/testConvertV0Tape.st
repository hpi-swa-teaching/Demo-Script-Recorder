as yet unclassified
testConvertV0Tape

	| tool |
	
	tool := DRCRecordingTool new.
	tool 
		actionRecord;
		actionStop.
	self assert: (tool convertV0Tape: tool tape) equals: #().