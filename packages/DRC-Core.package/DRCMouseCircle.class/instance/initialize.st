initialization
initialize 

	super initialize.
	self
		timeToLive: self invalidTimeToLive;
		initializeVertices;
		makeOpen;
		lock.