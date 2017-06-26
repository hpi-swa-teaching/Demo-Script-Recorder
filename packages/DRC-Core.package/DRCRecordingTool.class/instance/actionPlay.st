actions
actionPlay
	(self recorder state = #record) ifFalse: [ 
											(self recorder state = #play) 
											ifFalse: [
													"self recreateState."
													self recorder play.
													self scriptEditor executeScript.
													self getVisualFeedback.]
											ifTrue:[]] 
									   ifTrue: [] 