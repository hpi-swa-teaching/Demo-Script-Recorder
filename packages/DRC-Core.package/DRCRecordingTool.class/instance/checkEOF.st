event handling
checkEOF 

	^ (self tapeStream isNil or:[self tapeStream atEnd]) 