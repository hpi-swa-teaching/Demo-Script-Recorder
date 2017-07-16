Test-DRCRecorder
testHandleListenEvent
| recorder  event |
recorder := DRCRecorder new.
event := MorphicEvent new.

self assert: (recorder handleListenEvent: event) equals: recorder.

"Hier können noch einige Pfade abgelaufen werden"  


recorder delete.