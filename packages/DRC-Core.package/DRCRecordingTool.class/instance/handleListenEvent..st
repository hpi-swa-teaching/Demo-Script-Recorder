event-processing
handleListenEvent: anEvent

	anEvent hand == self recHand ifFalse: [^ self].
	self recorderState == #record ifFalse: [
		self recHand ifNotNil: [self recHand removeEventListener: self].
		^self].
	anEvent = self lastEvent ifTrue: [^ self].

	(anEvent isKeyboard)
		ifTrue: [ self handleKeyboardInput: anEvent].
		
	self	writeEventToTape: anEvent.