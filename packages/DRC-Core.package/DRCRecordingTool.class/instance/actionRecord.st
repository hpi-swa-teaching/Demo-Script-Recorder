actions
actionRecord
	
	self 
		tapePath: 'unsaved tape';
		changed: #currentTapePath;
		enableStopButton;
		record;
		getVisualFeedback.