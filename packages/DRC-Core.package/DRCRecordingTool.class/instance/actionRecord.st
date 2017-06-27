actions
actionRecord
	
	"self world: (self dependents at: 1) owner.
	self savedObjects: OrderedCollection new."
	self saveState.
	self recorder tapePath: 'unsaved tape'.
	self changed: #currentTapePath.
	self recorder record.
	self enableStopButton.
	self getVisualFeedback.
	
	
