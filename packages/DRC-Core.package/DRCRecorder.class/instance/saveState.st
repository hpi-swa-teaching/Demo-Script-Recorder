recording-state
saveState 
	
	savedObjects := OrderedCollection new.
	self world submorphsDo: [:object | savedObjects add: object veryDeepCopy].
	
	"self savedObjects: (OrderedCollection new: self world submorphs size streamContents: 
		[ :stream | | deepCopier |
			deepCopier := DeepCopier new: self initialDeepCopierSize.
			self world submorphsDo: 
				[:object | stream nextPut: (object veryDeepCopyUsing: deepCopier)]]).
	"