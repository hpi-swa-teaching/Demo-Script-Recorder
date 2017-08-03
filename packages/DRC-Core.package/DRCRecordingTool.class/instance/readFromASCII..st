fileIn-Out
readFromASCII: aStream

	| tape |
	
	tape := Array streamContents:
		[:tStream |
			[aStream atEnd.] whileFalse: [tStream nextPut: (MorphicEvent readFromString: aStream nextLine).].].
	
	^ tape