as yet unclassified
testRecorderInitialization 

	self assert: self recorder tapePath equals: 'no tape selected'.
	self assert: self recorder saved equals: true.
	self assert: self recorder pauseTotalTime equals: 0.
	self assert: self recorder pauseStartTime equals: 0.