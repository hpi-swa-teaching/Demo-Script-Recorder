event-processing
writeEventToTape: anEvent

	self currentTimestamp: anEvent timeStamp - self pauseTotalTime.
	self tapeStream nextPut: (anEvent copy setHand: nil; setTimeStamp: (anEvent timeStamp - self pauseTotalTime)).
	self journalFile ifNotNil:
		[self journalFile store: anEvent; cr; flush].
	self lastEvent: anEvent.