as yet unclassified
testShowing

	self assert: self circle isInWorld equals: false.
	self circle showAt: (0 @ 0) with: Color red.
	self assert: self circle isInWorld equals: true. 