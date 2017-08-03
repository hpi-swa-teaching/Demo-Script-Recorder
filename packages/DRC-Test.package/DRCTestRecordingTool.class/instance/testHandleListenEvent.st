as yet unclassified
testHandleListenEvent

	| event |
	
	event := MorphicEvent new.
	self assert: (self recordingTool handleListenEvent: event) equals: self recordingTool.

