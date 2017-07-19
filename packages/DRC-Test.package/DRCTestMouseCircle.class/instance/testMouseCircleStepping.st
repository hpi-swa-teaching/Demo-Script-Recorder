as yet unclassified
testMouseCircleStepping

self assert: self circle stepTime equals: self defaultStepTime.
self assert: self circle wantsSteps equals: true.

self circle showAt: (0@0) with: Color red.
self circle step.
self assert: self circle timeToLive equals: (self circle defaultTimeToLive - 1).   
