fileIn/Out
writeTape: fileName 
	| name bb |
	name := self writeFileNamed: fileName.
	self tapePath: name.
	bb := self findDeepSubmorphThat: [:mm | (mm isKindOf: SimpleButtonMorph)
				and: [mm label = 'writeTape']] 
			ifAbsent: [^ self].
	bb actionSelector: #writeTape:.
	bb arguments: (Array with: name).
