accessing
createFileChooser

| fileChooser |
fileChooser := FileChooser new.
fileChooser initializeAsSystemWindow.
fileChooser setSuffixes: {'tape'}.
^ fileChooser