initialization
initialize 

	super initialize.
	self timeToLive: -1;
	vertices: self verts color: Color red borderWidth: 6 borderColor: Color red;
	makeOpen;
	lock.