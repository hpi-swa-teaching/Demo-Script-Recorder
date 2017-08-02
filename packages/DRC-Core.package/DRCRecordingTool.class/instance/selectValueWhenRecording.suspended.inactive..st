building
selectValueWhenRecording: anObject1 suspended: anObject2 inactive: anObject3

	(self recorderState = #record)
		ifTrue: [^ anObject1]
		ifFalse:[(self recorderState = #suspendedRecord)
					ifTrue: [^ anObject2]
					ifFalse:[^ anObject3]]