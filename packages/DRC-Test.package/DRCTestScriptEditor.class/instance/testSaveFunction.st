as yet unclassified
testSaveFunction

	self editor code: 'test'.
	self assert: self editor code notNil equals: true.
	self editor actionSaveCode.
	self assert: self editor code notNil equals: true.