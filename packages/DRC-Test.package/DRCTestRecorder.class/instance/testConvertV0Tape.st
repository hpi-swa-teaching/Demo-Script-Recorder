as yet unclassified
testConvertV0Tape

	| tool |
	tool := DRCRecordingTool new.
	tool actionRecord.
	tool actionStop.
	self assert: (tool recorder convertV0Tape: tool recorder tape) equals: #().