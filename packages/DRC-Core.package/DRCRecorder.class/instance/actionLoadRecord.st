actions
actionLoadRecord

	self recorder readTape.
	self changed: #currentTapePath.