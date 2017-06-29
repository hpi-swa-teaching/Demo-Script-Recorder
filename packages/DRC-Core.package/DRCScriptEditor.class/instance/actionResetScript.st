actions
actionResetScript 

	(self dependents select: [:d | d hasUnacceptedEdits ]) do: [:d | d accept].
	self 
		code: '';
		changed: #code.