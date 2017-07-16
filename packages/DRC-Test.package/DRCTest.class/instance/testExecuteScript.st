Test-DRCScriptEditor
testExecuteScript
| editor initialSize endSize |
editor := DRCScriptEditor new.
initialSize := World dependents size.
editor code: 'World addDependent: Morph new'.
editor executeScript.
endSize := World dependents size.

self assert: (endSize - initialSize) equals: 1.

editor delete. 