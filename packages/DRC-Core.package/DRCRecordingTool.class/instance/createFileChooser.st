fileIn/Out
createFileChooser

	| fileChooser |
	fileChooser := FileChooser new.
	fileChooser 
		initializeAsSystemWindow;
	 	setSuffixes: {'tape'}.
	^ fileChooser