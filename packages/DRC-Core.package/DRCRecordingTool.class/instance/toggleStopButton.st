accessing
toggleStopButton
	
	self isStopButtonEnabled ifTrue: [self disableStopButton.]
							ifFalse: [self enableStopButton.].
						