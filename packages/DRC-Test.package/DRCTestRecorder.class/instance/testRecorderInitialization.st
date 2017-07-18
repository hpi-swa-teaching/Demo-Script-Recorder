as yet unclassified
testRecorderInitialization 

	|recorder|
	recorder := DRCRecorder new.
	self assert: recorder tapePath equals: 'no tape selected'.
	self assert: recorder saved equals: true.
	self assert: recorder pauseTotalTime equals: 0.
	self assert: recorder pauseStartTime equals: 0.