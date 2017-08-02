fileIn-Out
writeCheck
	
	(self saved not and: [self confirm: 'The current tape has not been saved.', Character cr, 'Would you like to do so now?']) ifTrue: [self writeTape.].

