events-processing
handleListenEvent: anEvent
	
	"Record the given event"
	anEvent hand == recHand ifFalse: [^ self].	"not for me"
	recorderState == #record ifFalse: [
		"If user got an error while recording and deleted recorder, will still be listening"
		recHand ifNotNil: [recHand removeEventListener: self].
		^self].
	anEvent = lastEvent ifTrue: [^ self].
	(anEvent isKeyboard and:[anEvent keyValue = 27 "esc"])
		ifTrue: [^ recordingTool actionStop].
 	(anEvent isKeyboard and:[anEvent keyString = '<Cmd-p>' "CTRL--P"])
		ifTrue: [(recorderState = #record)
					ifTrue: [^ recordingTool actionPause].
				(recorderState = #suspendedRecord)	
					ifTrue: [^ recordingTool actionResume].].
	time := anEvent timeStamp - self pauseTotalTime.
	tapeStream nextPut: (anEvent copy setHand: nil; setTimeStamp: (anEvent timeStamp - self pauseTotalTime)).
	journalFile ifNotNil:
		[journalFile store: anEvent; cr; flush].
	lastEvent := anEvent.