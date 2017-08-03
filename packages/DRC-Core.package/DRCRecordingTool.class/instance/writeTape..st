fileIn-Out
writeTape: fileName 

	| path |
	
	path := self writeFileNamed: fileName.
	self tapePath: path.