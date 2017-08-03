actions
actionLoadRecord

		self 
			readTape ifNotNil: [self resetSavedState.];
			changed: #currentTapePath.
		