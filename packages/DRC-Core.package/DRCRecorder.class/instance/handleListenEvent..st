events-processing
handleListenEvent: anEvent
	"Record the given event"
	self paused ifTrue: [^ self].
	anEvent hand == recHand ifFalse: [^ self].	"not for me"
	state == #record ifFalse: [
		"If user got an error while recording and deleted recorder, will still be listening"
		recHand ifNotNil: [recHand removeEventListener: self].
		^self].
	anEvent = lastEvent ifTrue: [^ self].
	(anEvent isKeyboard and:[anEvent keyValue = 27 "esc"])
		ifTrue: [^ self stop].
	time := anEvent timeStamp - self pauseTotalTime.
	tapeStream nextPut: (anEvent copy setHand: nil; setTimeStamp: (anEvent timeStamp - self pauseTotalTime)).
	journalFile ifNotNil:
		[journalFile store: anEvent; cr; flush].
	lastEvent := anEvent.