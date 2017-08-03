fileIn-Out
readTape: aMultiByteFileStream 

	self 
		writeCheck;
		tapePath: aMultiByteFileStream fullName;
		tape: (self readFrom: aMultiByteFileStream).
	aMultiByteFileStream close.
	self saved: true.