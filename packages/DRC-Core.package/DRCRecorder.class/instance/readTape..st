fileIn/Out
readTape: aMultiByteFileStream 
	self writeCheck.
	
	"(FileStream isAFileNamed: aMultiByteFileStream fullName) ifFalse: [^ nil]."
	"file := FileStream oldFileNamed: fileName."
	
	self tapePath: (aMultiByteFileStream fullName).
	tape := self readFrom: aMultiByteFileStream.
	aMultiByteFileStream close.
	saved := true   