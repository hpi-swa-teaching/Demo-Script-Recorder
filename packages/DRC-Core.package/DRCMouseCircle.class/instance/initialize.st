initialization
initialize 

	super initialize.
	self existingTime: 0.
	self vertices: self verts color: Color red borderWidth: 8 borderColor: Color red.
	self visible: false.
	self makeOpen.
	self fadeOut.
	self extent: ((self x + 50)@(self y + 50))