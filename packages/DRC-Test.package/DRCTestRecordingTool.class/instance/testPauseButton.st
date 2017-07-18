as yet unclassified
testPauseButton

	self assert: self tool recorder pauseStartTime equals: 0.
	self tool actionRecordPause.
	self tool actionRecordPause.
	self tool actionRecordPause.
	self assert: [self tool recorder pauseStartTime > 0].
	self tool actionStop.