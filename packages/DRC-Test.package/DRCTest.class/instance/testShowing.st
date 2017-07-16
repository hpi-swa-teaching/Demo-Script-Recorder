Test-DRCMouseCircle
testShowing
| circle | 
circle := DRCMouseCircle new.
self assert: circle isInWorld equals: false.
circle showAt: (0@0) with: Color red.
self assert: circle isInWorld equals: true.
circle delete. 