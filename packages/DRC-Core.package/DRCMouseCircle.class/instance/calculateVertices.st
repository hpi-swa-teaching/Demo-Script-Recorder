calculation
calculateVertices
	
	| points distanceVertices |
	
	distanceVertices := self circleDegrees / self numberVertices.
	points := OrderedCollection new.
	
	0 to: self numberVertices  do: "TODO!!!!"
		[:idx | 
			|angle point|
			
			angle := distanceVertices * idx.
			point := (angle degreeSin @ angle degreeCos).
			points add: (point * self radius) rounded + self radius + 10.].
	
	^ points