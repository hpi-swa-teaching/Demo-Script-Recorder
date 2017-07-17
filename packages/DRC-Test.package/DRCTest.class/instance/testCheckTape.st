Test-DRCRecorder
testCheckTape
| recorder |
recorder := DRCRecorder new.

self assert: (recorder checkTape) equals: recorder. 

recorder delete.