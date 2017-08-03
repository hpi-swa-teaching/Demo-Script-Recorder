as yet unclassified
testPathLabelChange

	| tool |
	
	tool := DRCRecordingTool new.
	self assert: tool tapePath equals: 'no tape selected'.
	tool actionRecord.
	self assert: tool tapePath equals: 'unsaved tape'.
	tool actionStop.
	self assert: tool tapePath equals: 'unsaved tape'.
	
	tool delete.