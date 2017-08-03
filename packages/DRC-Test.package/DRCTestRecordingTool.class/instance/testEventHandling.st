as yet unclassified
testEventHandling

	self 
		assert: (self recordingTool checkEOF) equals: true;
		assert: (self recordingTool nextEventToPlay class) equals: (MorphicUnknownEvent new class).

	self recordingTool synchronize.
	self 
		assert: (self recordingTool deltaTime) equals: nil;
		assert: (self recordingTool currentTimestamp notNil) equals: true.

	self recordingTool deltaTimeFor: MorphicEvent new until: 0.
	self assert: (self recordingTool deltaTime <= 0) equals: true.  

	self recordingTool lastEvent: MorphicEvent new.
	self assert: (self recordingTool calculateCurrentDeltaPositionFor: Morph new from: (0 @ 0) at: 0  until: 1)  equals: (0 @ 0). 
 