fileIn/Out
readTape
	|  file fileChooser |
	self saveStateIn: (self savedObjects) .
	fileChooser := FileChooser new.
	fileChooser initializeAsSystemWindow.
	fileChooser setSuffixes: {'tape'}.
	file := fileChooser open. 
	file = nil ifTrue: [^nil].
	^self readTape: file.