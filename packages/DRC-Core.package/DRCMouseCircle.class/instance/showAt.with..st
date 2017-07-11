showing
showAt: aPosition with: aColor

	self position: aPosition x @ aPosition y - self radius.
	self borderColor: aColor.
	self timeToLive: self defaultTimeToLive.
	self openInWorld.