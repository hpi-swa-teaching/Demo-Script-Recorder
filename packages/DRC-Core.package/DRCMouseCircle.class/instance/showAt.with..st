showing
showAt: aPosition with: aColor

	self position: aPosition x @ aPosition y - self radius;
	borderColor: aColor;
	timeToLive: self defaultTimeToLive;
	openInWorld.