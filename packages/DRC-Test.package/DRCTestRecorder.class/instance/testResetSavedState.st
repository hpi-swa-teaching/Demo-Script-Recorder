as yet unclassified
testResetSavedState
| collection|
collection := OrderedCollection new.
collection add: Morph new.
self recorder savedObjects: collection.

self assert: (self recorder savedObjects isEmpty) equals: false.

self recorder resetSavedState.

self assert: (self recorder savedObjects isEmpty) equals: true. 