actions
actionSaveRecord

	self recorder writeTape.
	self changed: #currentTapePath.