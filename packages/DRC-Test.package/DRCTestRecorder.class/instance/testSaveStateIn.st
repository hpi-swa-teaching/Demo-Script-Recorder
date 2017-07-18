as yet unclassified
testSaveStateIn
| recorder |
recorder := DRCRecorder new.


self assert: (recorder savedObjects isEmpty) equals: true.

recorder saveStateIn: recorder savedObjects.

self assert: (recorder savedObjects isEmpty) equals: true.

recorder delete.