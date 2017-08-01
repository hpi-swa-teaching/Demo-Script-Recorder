actions
actionPlay

	(self recorderState = #record) 
		ifFalse: [(self recorderState = #play)
					ifFalse: [self 
								play;
								getVisualFeedback.
							 self scriptEditor executeScript.]].