recording-state
recreateState

	|temporaryWorld|
	temporaryWorld := Morph new.
	temporaryWorld bounds: World bounds.
	temporaryWorld openInWorld.
	self savedObjects do: [:object | object openInWorld.].