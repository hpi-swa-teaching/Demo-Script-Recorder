as yet unclassified
testVisualization
	
	| mockMouse found |

	mockMouse := MockMouseEvent new.
	mockMouse button: 'red'.
	found := false.
	self recordingTool visualizeMouseEvent: mockMouse.
	World submorphsDo: [ :object | ((object class = DRCMouseCircle) and:(object borderColor = Color red)) ifTrue: [found := true]].
	
	self assert: found equals: true.

	mockMouse button: 'blue'.
	found := false.
	self recordingTool visualizeMouseEvent: mockMouse.
	World submorphsDo: [ :object | ((object class = DRCMouseCircle) and:(object borderColor = Color blue)) ifTrue: [found := true]].

	self assert: found equals: true.

	mockMouse button: 'yellow'.
	found := false.
	self recordingTool visualizeMouseEvent: mockMouse.
	World submorphsDo: [ :object | ((object class = DRCMouseCircle) and:(object borderColor = Color yellow)) ifTrue: [found := true]].

	self assert: found equals: true.