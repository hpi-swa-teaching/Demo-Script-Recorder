actions
actionRecordStop

	(self recorder state = #record)  ifTrue: [self actionStop]
							 ifFalse: [
									(self recorder state = #play) ifTrue: [] 
														   ifFalse: [self actionRecord]].