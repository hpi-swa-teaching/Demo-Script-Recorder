calculation
calculateVertices
	
	| vertices |
	
	vertices := (Array new: self numberVertices) asOrderedCollection.
	vertices := vertices withIndexCollect:
		[:each :index | | angle |
			angle := self angleStepRange * index.
			each := (angle degreeSin @ angle degreeCos).
			each := (each * self radius) rounded.].
			
	^ vertices