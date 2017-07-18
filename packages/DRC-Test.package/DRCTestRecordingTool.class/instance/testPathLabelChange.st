as yet unclassified
testPathLabelChange

	self assert: self tool recorder tapePath equals: 'no tape selected'.
	self tool actionRecord.
	self assert: self tool recorder tapePath equals: 'unsaved tape'.
	self tool actionStop.
	self assert: self tool recorder tapePath equals: 'unsaved tape'.