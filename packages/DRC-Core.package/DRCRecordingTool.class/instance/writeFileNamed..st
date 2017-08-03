fileIn-Out
writeFileNamed: fileName
	
	| directory file timeDelta|
	
	directory := self createDirectoryChooser open.
	file := directory newFileNamed: fileName.
	file nextPutAll: 'Event Tape v1 ASCII'; cr.
	timeDelta := self tape first timeStamp.
	self tape do: 
		[:event | 
			file store: (event copy setTimeStamp: event timeStamp-timeDelta); cr].
	file close.
	self saved: true.
	
	^ file name