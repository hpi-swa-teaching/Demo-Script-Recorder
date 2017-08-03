as yet unclassified
testMouseCircleInitialization 

	self 
		assert: self circle timeToLive equals: self deadTime;
		assert: self circle vertices notNil;
		assert: self circle color equals: self defaultColor;
		assert: self circle vertices size equals: self defaultVerticesSize;
		assert: self circle radius equals: self defaultRadiusSize ;
		assert: self circle defaultTimeToLive equals: self defaultTimeToLive.