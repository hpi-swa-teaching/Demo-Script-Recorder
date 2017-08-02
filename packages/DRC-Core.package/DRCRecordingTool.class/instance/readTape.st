fileIn-Out
readTape
	|  file |
	self saveStateIn: (self savedObjects).
	file := (self fileChooser) open. 
	file = nil ifTrue: [^nil].
	^self readTape: file.