actions
actionPlay

	(self recorder recorderState = #record) 
		ifFalse: [(self recorder recorderState = #play)
					ifFalse: [self recorder play.
							self scriptEditor executeScript.
							self getVisualFeedback.]].