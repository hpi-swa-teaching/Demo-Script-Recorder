as yet unclassified
testLifeTime
	| circle  | 
	circle := DRCMouseCircle new.
	self assert: circle  timeToLive equals: -1.
	circle decreaseLifeTime.
	self assert: circle timeToLive equals: -2.
	circle delete.