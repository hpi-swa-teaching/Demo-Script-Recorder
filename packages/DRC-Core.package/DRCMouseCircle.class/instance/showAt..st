showing
showAt: aPosition

	self visible: true.
	self existingTime: 30.
	self position: aPosition x  @ aPosition y - self radius.
	self fadeIn.