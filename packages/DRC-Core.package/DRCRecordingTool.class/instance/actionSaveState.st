actions
actionSaveState

	self isSaving: self isSaving not.
	self changed: #getCheckboxState.