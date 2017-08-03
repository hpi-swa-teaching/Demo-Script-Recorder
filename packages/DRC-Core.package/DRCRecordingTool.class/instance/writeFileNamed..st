fileIn-Out
writeFileNamed: fileName
	
	| directory file delta|
	
	directory := self createDirectoryChooser open.
	file := directory newFileNamed: fileName.
	file nextPutAll: 'Event Tape v1 ASCII'; cr.
	delta := self tape first timeStamp.
	self tape do: [:evt | file store: (evt copy setTimeStamp: evt timeStamp-delta); cr].
	file close.
	self saved: true.
	
	^ file name