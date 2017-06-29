actions
actionSaveCode

	(self dependents select: [:d | d hasUnacceptedEdits ]) do: [:d | d accept].
	self 
		code: self code;
		changed: #code.