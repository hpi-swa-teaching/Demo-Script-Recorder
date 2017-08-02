as yet unclassified
testHandleListenEvent

	| event |
	event := MorphicEvent new.
	self assert: (self recorder handleListenEvent: event) equals: self recorder.

