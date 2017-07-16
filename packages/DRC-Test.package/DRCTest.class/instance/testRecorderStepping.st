Test-DRCRecorder
testRecorderStepping
| recorder |
recorder := DRCRecorder new.

self assert: (recorder stepTime) equals: 500.
self assert: (recorder wantsSteps) equals: true. 

recorder delete.