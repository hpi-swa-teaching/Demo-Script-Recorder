as yet unclassified
testOpenDirectory

	|directoryChooser|

	directoryChooser := DRCDirectoryChooser new.
	directoryChooser initializeAsSystemWindow.
	[	(Delay forMilliseconds: self timeForAction) wait.
		directoryChooser okHit.] fork.
	self assert: (directoryChooser open isKindOf: FileDirectory).