fileIn-Out
writeFileNamed: fileName
	
	| directory file deltaTime|
	
	directory := self createDirectoryChooser open.
	file := directory newFileNamed: fileName.
	file nextPutAll: 'Event Tape v1 ASCII'; cr.
	deltaTime := self tape first timeStamp.
	self tape do: 
		[:event | 
			file store: (event copy setTimeStamp: event timeStamp - deltaTime); cr].
	file close.
	self saved: true.
	
	^ file name