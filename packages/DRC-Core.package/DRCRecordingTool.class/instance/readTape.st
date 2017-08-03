fileIn-Out
readTape

	|  file |
	
	file := self fileChooser open. 
	file = nil ifTrue: [^ nil].
	
	^ self readTape: file