building
selectValueWhenRecording: anObject1 suspended: anObject2 inactive: anObject3

	(self recorder recorderState = #record)
		ifTrue: [^ anObject1]
		ifFalse:[(self recorder recorderState = #suspendedRecord)
					ifTrue: [^ anObject2]
					ifFalse:[^ anObject3]]