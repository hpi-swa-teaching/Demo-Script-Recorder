Test-DRCMouseCircle
testMouseCircleStepping
| circle |
circle := DRCMouseCircle new. 
self assert: circle stepTime equals: 1.
self assert: circle wantsSteps equals: true.

circle showAt: (0@0) with: Color red.
circle step.
self assert: circle timeToLive equals: (circle defaultTimeToLive - 1).   

circle  delete.