accessing
fileChooser

| fileChooser |
fileChooser := FileChooser new.
fileChooser initializeAsSystemWindow.
fileChooser setSuffixes: {'tape'}.
^ fileChooser