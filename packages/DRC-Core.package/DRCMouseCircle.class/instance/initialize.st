initialization
initialize 

	super initialize.
	self existingTime: 0.
	self vertices: self verts color: Color red borderWidth: 6 borderColor: Color red.
	self visible: false.
	self makeOpen.
	self fadeOut.