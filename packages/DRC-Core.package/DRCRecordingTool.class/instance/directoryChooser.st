accessing
directoryChooser

| dirChooser |
dirChooser := DRCDirectoryChooser new.
dirChooser initializeAsSystemWindow.
dirChooser setSuffixes: {'tape'}.
^ dirChooser.
