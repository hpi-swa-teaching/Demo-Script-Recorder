actions
actionRecord
	
	self recorder tapePath: 'unsaved tape'.
	self	changed: #currentTapePath.
	self	recorder record.
	self	enableStopButton;
		getVisualFeedback.
	
	
