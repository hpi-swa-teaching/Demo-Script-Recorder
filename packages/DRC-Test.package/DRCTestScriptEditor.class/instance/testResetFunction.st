as yet unclassified
testResetFunction

	self assert: self editor code notNil equals: false.
	self editor code: 'test'.
	self assert: self editor code notNil equals: true.
	self editor actionResetScript.
	self assert: self editor code notNil equals: false.