Test-DRCRecorder
testVisualization
| recorder mockMouse found |
recorder := DRCRecorder new.
mockMouse := MockMouseEvent new.

mockMouse button: 'red'.
found := false.
recorder visualizeMouseEvent: mockMouse.
World submorphsDo: [ :object | ((object class = DRCMouseCircle) and:(object borderColor = Color red)) ifTrue: [found := true]].

self assert: found equals: true.

mockMouse button: 'blue'.
found := false.
recorder visualizeMouseEvent: mockMouse.
World submorphsDo: [ :object | ((object class = DRCMouseCircle) and:(object borderColor = Color blue)) ifTrue: [found := true]].

self assert: found equals: true.

mockMouse button: 'yellow'.
found := false.
recorder visualizeMouseEvent: mockMouse.
World submorphsDo: [ :object | ((object class = DRCMouseCircle) and:(object borderColor = Color yellow)) ifTrue: [found := true]].

self assert: found equals: true.
recorder delete.