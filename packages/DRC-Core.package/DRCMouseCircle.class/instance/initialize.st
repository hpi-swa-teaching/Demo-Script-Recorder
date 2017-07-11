initialization
initialize 

	super initialize.
	self timeToLive: -1.
	self vertices: self verts color: Color red borderWidth: 6 borderColor: Color red.
	self makeOpen.
	self lock.