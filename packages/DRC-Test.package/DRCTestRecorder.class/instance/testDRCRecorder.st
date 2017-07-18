as yet unclassified
testDRCRecorder

	"|tool|
	tool := DRCRecorder new.
	tool isSaving: false.
	self assert: tool tape notNil equals: false.
	tool record.
	tool actionStop.
	self assert: tool tape notNil equals: true.
	tool delete."