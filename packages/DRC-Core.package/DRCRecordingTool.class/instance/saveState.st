recording-state
saveState 

	|morphs|
	morphs := self world submorphs.
	morphs do: [ :object | self savedObjects add: (object veryDeepCopy).].