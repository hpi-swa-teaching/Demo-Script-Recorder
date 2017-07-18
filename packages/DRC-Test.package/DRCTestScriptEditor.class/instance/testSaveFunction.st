as yet unclassified
testSaveFunction

	"Noch mal anschauen bitte :D"
	self editor code: 'test'.
	self assert: self editor code notNil  equals: true.
	self editor actionSaveCode.
	self assert: self editor code notNil  equals: true.