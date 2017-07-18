as yet unclassified
testRecordButton

	self assert: self tool recorder state  equals: nil.
	self tool actionRecord.
	self assert: self tool recorder state equals: #record.
	self tool actionStop.
	self assert: self tool recorder state equals: nil.