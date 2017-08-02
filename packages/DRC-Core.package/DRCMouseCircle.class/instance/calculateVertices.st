calculation
calculateVertices
	
	| points centralAngle |
	
	centralAngle := self circleDegrees / self distanceVertices.
	points := OrderedCollection new.
	
	0 to: self distanceVertices  do: "TODO!!!!"
		[:idx | 
			|angle point|
			
			angle := centralAngle * idx.
			point := (angle degreeSin @ angle degreeCos).
			points add: (point * self radius) rounded + self radius + 10.].
	
	^ points