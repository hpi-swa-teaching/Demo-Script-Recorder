as yet unclassified
testResetSavedState

	| collection |
	
	collection := OrderedCollection new.
	collection add: Morph new.
	self recordingTool savedObjects: collection.
	self assert: (self recordingTool savedObjects isEmpty) equals: false.

	self recordingTool resetSavedState.
	self assert: (self recordingTool savedObjects isEmpty) equals: true. 