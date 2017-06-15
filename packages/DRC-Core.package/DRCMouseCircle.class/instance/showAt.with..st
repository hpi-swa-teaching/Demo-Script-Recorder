showing
showAt: aPosition with: aColor

	self position: aPosition x @ aPosition y - self radius.
	self borderColor: aColor.
	self lifeTime: 20.
	self openInWorld.