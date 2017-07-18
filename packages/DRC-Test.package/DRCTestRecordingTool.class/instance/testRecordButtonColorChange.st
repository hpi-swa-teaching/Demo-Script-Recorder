as yet unclassified
testRecordButtonColorChange
	
	"TODO: add test for color if not recording or pausing"
	
	self tool actionRecord.
	[self tool recorder state = #record] whileFalse: [].
	self assert: self tool getColor equals: Color red.
	self tool actionRecordPause. "Maybe rename: actionPauseResume"
	self assert: self tool getColor equals: Color orange.
	self tool actionRecordPause. "Maybe rename: actionPauseResume"
	[self tool recorder state = #record] whileFalse: [].
	self assert: self tool getColor equals: Color red.
	self tool actionStop.