calculation
calculateVertices
	
	| vertices angleStepRange |
	
	angleStepRange := self circleDegrees / self numberVertices.
	vertices := OrderedCollection new.
	
	0 to: self numberVertices do: "TODO!!!!"
		[:pointID | 
			|angle vertex|
			
			angle := angleStepRange * pointID.
			vertex := (angle degreeSin @ angle degreeCos).
			vertices add: (vertex * self radius) rounded.].
	
	^ vertices