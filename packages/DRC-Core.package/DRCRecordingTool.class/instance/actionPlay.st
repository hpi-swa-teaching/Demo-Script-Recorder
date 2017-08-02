actions
actionPlay

	(self recorderState = #record or: [self recorderState = #play]) 
		ifFalse: [self 
					play;
					getVisualFeedback.
				 self scriptEditor executeScript.].