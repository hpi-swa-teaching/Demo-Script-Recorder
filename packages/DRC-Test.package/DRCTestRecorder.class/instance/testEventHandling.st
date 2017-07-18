as yet unclassified
testEventHandling
| recorder |
recorder := DRCRecorder new.

self assert: (recorder checkEOF) equals: true.

self assert: (recorder nextEventToPlay class) equals: (MorphicUnknownEvent new class).

recorder synchronize.

self assert: (recorder deltaTime) equals: nil.
self assert: (recorder pauseTime) equals: 0.
self assert: (recorder time notNil) equals: true.

recorder deltaTimeFor: MorphicEvent new until: 0.

self assert: (recorder deltaTime <= 0) equals: true.  

recorder lastEvent: MorphicEvent new.

self assert: (recorder calculateCurrentDeltaFor: Morph new from: (0@0) at: 0  until: 1)  equals: (0@0). 
 
recorder delete.