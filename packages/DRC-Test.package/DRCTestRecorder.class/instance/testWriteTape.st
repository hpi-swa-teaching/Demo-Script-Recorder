as yet unclassified
testWriteTape

	| mockrecorder path |
	mockrecorder := MockRecorder new.
	'xyz.tape' asFile delete.
	mockrecorder tape: MockTape new.
	mockrecorder writeTape: 'xyz.tape'.
	path := mockrecorder tapePath.
	self assert: (path = 'no tape selected') equals: false. 
	self assert: (path = 'unsaved tape') equals: false.