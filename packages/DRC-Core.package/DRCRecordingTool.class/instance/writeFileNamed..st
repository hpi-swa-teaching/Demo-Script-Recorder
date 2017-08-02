fileIn-Out
writeFileNamed: fileName
	
	| directory file delta|
	"[file := FileStream newFileNamed: fileName.] on: FileExistsException do: [ :exception  | [exception defaultAction.] on: Error do: [^'unsaved tape'] ] ."
	
	directory := (self directoryChooser) open.
	file := directory newFileNamed: fileName.
	
	file nextPutAll:'Event Tape v1 ASCII'; cr.
	delta := tape first timeStamp.
	tape do: [:evt | file store: (evt copy setTimeStamp: evt timeStamp-delta); cr].
	file close.

	saved := true.
	^ file name