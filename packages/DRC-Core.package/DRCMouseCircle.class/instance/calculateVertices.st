calculation
calculateVertices
	
	| vertices angleStepRange |
	
	angleStepRange := self circleDegrees / self numberVertices.
	vertices := (Array new: self numberVertices) asOrderedCollection.
	vertices := vertices withIndexCollect:
		[:each :index | | angle |
			angle := angleStepRange * index.
			each := (angle degreeSin @ angle degreeCos).
			each := (each * self radius) rounded.].
			
	^ vertices