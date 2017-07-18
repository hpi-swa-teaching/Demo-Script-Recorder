as yet unclassified
testOpenDirectory

	|directoryChooser|

	directoryChooser := DRCDirectoryChooser new.
	directoryChooser initializeAsSystemWindow.
	[	(Delay forMilliseconds: 200) wait.
		directoryChooser okHit.] fork.
	self assert: directoryChooser open class equals: DosFileDirectory.