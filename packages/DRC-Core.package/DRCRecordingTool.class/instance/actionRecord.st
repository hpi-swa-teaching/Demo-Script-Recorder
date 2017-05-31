actions
actionRecord
	
	self recorder tapePath: 'unsaved tape'.
	self changed: #currentTapePath.
	self saveCurrentState.
	self recorder record.
	self getVisualFeedback.
