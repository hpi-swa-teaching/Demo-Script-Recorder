visualization
visualizeMouseEvent: aMouseEvent

	| aMouseCircle |
	aMouseCircle := DRCMouseCircle new.	
	(aMouseEvent blueButtonPressed) 
		ifTrue: [aMouseCircle showAt: aMouseEvent position with: Color blue].
	(aMouseEvent redButtonPressed) 
		ifTrue: [aMouseCircle showAt: aMouseEvent position with: Color red].
	(aMouseEvent yellowButtonPressed) 
		ifTrue: [aMouseCircle showAt: aMouseEvent position with: Color yellow].