Test-DRCRecorder
testRecorderInitialize
| recorder | 
recorder := DRCRecorder new.

self assert: (recorder savedObjects isEmpty) equals: true.
self assert: (recorder currentObjectState isEmpty) equals: true.
self assert: (recorder tapePath) equals: 'no tape selected'.
self assert: (recorder saved) equals: true.
self assert: (recorder pauseTotalTime) equals: 0.
self assert: (recorder pauseStartTime) equals: 0.     