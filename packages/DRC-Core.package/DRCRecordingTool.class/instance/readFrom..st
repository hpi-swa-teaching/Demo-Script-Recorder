fileIn-Out
readFrom: aStream

	| header |
	
	header := aStream nextLine.
	(header = 'Event Tape v1 BINARY') ifTrue: [^ aStream fileInObjectAndCode].
	(header = 'Event Tape v1 ASCII') ifTrue: [^ self readFromASCII: aStream].
