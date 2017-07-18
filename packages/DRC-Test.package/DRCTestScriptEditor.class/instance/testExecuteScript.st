as yet unclassified
testExecuteScript
| initialSize endSize |
initialSize := World dependents size.
self editor code: 'World addDependent: Morph new'.
self editor executeScript.
endSize := World dependents size.

self assert: (endSize - initialSize) equals: 1.
