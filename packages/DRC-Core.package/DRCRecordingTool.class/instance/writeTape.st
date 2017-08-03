fileIn-Out
writeTape
	
	[^ self writeTape: (UIManager default request: 'Tape to write'
								initialAnswer: 'tapeName.tape')] on: Error do: [].