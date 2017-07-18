as yet unclassified
testCheckTape
| recorder |
recorder := DRCRecorder new.

self assert: (recorder checkTape) equals: recorder. 

recorder delete.