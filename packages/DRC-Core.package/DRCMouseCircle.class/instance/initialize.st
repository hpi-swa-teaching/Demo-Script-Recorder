initialization
initialize 

	super initialize.
	self
		timeToLive: self invalidTimeToLive;
		vertices: self calculateVertices color: self defaultColor borderWidth: self defaultBorderWidth borderColor: self defaultColor;
		makeOpen;
		lock.