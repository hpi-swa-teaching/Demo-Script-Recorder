as yet unclassified
testEventHandling

	self 
		assert: (self recorder checkEOF) equals: true;
		assert: (self recorder nextEventToPlay class) equals: (MorphicUnknownEvent new class).

	self recorder synchronize.
	self 
		assert: (self recorder deltaTime) equals: nil;
		assert: (self recorder time notNil) equals: true.

	self recorder deltaTimeFor: MorphicEvent new until: 0.
	self assert: (self recorder deltaTime <= 0) equals: true.  

	self recorder lastEvent: MorphicEvent new.
	self assert: (self recorder calculateCurrentDeltaFor: Morph new from: (0 @ 0) at: 0  until: 1)  equals: (0 @ 0). 
 