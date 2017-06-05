actions
actionPlay
	(self recorder state = #record) ifFalse: [ 
											(self recorder state = #play) 
											ifFalse: [
													self applySavedState.
													self recorder play.
													self scriptEditor executeScript.
													self getVisualFeedback.]
											ifTrue:[]] 
									   ifTrue: [] 