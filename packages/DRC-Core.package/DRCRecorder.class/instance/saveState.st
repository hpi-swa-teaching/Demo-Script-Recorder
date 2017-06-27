recording-state
saveState 

	self savedObjects: OrderedCollection new.
	(self world submorphs) do: [:object | self savedObjects add: (object veryDeepCopy)].