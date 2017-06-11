showing
showAt: aPosition

	self visible: true.
	self existingTime: 30.
	self position: aPosition x - 40   @ aPosition y - 25.
	self fadeIn.