as yet unclassified
testReadTape
  
 	| mockrecorder |
	
	mockrecorder := MockRecorder new.
	self assert: (mockrecorder tape) equals: nil.
	mockrecorder readTape.
	self assert: (mockrecorder tape) equals: #(). 
		