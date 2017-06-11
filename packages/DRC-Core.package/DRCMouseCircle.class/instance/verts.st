accessing
verts
	
	| size points radius centralAngle |
	size := 100.
	radius := 50.
	centralAngle := 360.0/size.
	points := OrderedCollection new.
	0 to: size  do:
		[:idx | |angle pt|
			angle := centralAngle * idx.
			pt := angle degreeSin @ angle degreeCos.
			points add: (pt * radius) rounded + radius + 10.].
	
	^points