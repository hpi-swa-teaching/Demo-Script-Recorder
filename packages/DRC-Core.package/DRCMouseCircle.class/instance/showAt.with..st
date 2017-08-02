showing
showAt: aPoint with: aColor

	self 
		position: (aPoint x @ aPoint y - self radius);
		borderColor: aColor;
		timeToLive: self defaultTimeToLive;
		openInWorld.