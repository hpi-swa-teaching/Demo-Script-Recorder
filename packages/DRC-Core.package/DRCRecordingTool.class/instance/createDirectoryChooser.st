fileIn-Out
createDirectoryChooser

	| directoryChooser |
	
	directoryChooser := DRCDirectoryChooser new.
	directoryChooser 
		initializeAsSystemWindow;
	 	setSuffixes: {'tape'}.
		
	^ directoryChooser