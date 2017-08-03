fileIn-Out
writeTape: fileName 

	| name |
	
	name := self writeFileNamed: fileName.
	self tapePath: name.