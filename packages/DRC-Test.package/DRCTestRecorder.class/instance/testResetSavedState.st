as yet unclassified
testResetSavedState
| recorder collection|
recorder := DRCRecorder new.
collection := OrderedCollection new.
collection add: Morph new.
recorder savedObjects: collection.

self assert: (recorder savedObjects isEmpty) equals: false.

recorder resetSavedState.

self assert: (recorder savedObjects isEmpty) equals: true. 

recorder delete.
