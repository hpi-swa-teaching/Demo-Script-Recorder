fileIn/Out
readTape: aMultiByteFileStream 
	self writeCheck.
	
	self tapePath: (aMultiByteFileStream fullName).
	tape := self readFrom: aMultiByteFileStream.
	aMultiByteFileStream close.
	saved := true   