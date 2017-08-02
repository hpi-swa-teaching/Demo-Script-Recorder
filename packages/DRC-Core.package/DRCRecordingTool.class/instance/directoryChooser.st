fileIn-Out
directoryChooser

	| dirChooser |
	dirChooser := DRCDirectoryChooser new.
	dirChooser 
		initializeAsSystemWindow;
	 	setSuffixes: {'tape'}.
	^ dirChooser.
