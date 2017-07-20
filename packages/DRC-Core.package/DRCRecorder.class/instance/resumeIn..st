pause/resume
resumeIn: aWorld
	"Resume playing or recording after a project switch."

	self recorderState = #suspendedPlay ifTrue:
		[self resumePlayIn: aWorld].
	self recorderState = #suspendedRecord ifTrue:
		[self resumeRecordIn: aWorld].
