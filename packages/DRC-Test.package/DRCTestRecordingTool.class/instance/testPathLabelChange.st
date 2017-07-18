as yet unclassified
testPathLabelChange

	|tool|
	tool := DRCRecordingTool new.
	
	self assert: tool recorder tapePath equals: 'no tape selected'.
	tool actionRecord.
	self assert: tool recorder tapePath equals: 'unsaved tape'.
	tool actionStop.
	self assert: tool recorder tapePath equals: 'unsaved tape'.
	
	tool delete.