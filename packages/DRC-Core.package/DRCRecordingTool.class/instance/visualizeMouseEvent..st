visualization
visualizeMouseEvent: aMouseEvent

	| aMouseCircle aColor|
	
	aMouseCircle := DRCMouseCircle new.
	aColor := nil.
	aMouseEvent blueButtonPressed ifTrue: [aColor := Color blue.].
	aMouseEvent redButtonPressed ifTrue: [aColor := Color red.].
	aMouseEvent yellowButtonPressed ifTrue: [aColor := Color yellow.].
	aMouseCircle showAt: aMouseEvent position with: aColor.