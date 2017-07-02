fileIn/Out
readTape
	|  file fileChooser |
	"file := FileList2 modalFileSelectorForSuffixes: {'tape'}."
	fileChooser := FileChooser new.
	fileChooser initializeAsSystemWindow.
	file := fileChooser open. 
	file = nil ifTrue: [^nil].
	^self readTape: file.