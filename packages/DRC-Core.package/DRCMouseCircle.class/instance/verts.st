accessing
verts
	
	| size points centralAngle |
	
	size := 100.
	centralAngle := 360.0/size.
	points := OrderedCollection new.
	0 to: size  do:
		[:idx | |angle pt|
			angle := centralAngle * idx.
			pt := angle degreeSin @ angle degreeCos.
			points add: (pt * self radius) rounded + self radius + 10.].
	
	^ points.