fileIn/Out
readTape
	|  file |
	file := FileList2 modalFileSelectorForSuffixes: {'tape'}.
	file = nil ifTrue: [^nil].
	^self readTape: file.