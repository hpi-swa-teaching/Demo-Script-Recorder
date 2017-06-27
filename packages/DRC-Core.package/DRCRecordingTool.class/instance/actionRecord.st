actions
actionRecord
	
	"self world: (self dependents at: 1) owner.
	self saveState."
	self recorder tapePath: 'unsaved tape'.
	self changed: #currentTapePath.
	self recorder record.
	self enableStopButton.
	self getVisualFeedback.
	
	
