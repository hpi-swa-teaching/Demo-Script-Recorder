as yet unclassified
testReadTape
  
 	|recorder value|
	value := 'something'.
 	recorder := DRCRecorder new.
		[(Delay forMilliseconds:  200) wait.
		recorder fileChooser cancelHit.] fork.
		self assert: recorder readTape isNil.
		