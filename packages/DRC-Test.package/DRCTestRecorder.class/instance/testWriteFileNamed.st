as yet unclassified
testWriteFileNamed

	| file mockrecorder |
	mockrecorder := MockRecorder new.
	'xyz.tape' asFile delete.
	mockrecorder tape: MockTape new.
	file := mockrecorder writeFileNamed: 'xyz.tape'.
	self assert: (file isKindOf: ByteString) equals: true.
	
	self assert: (FileDirectory new fileExists: file) equals: true. 