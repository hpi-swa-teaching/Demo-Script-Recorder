as yet unclassified
testScriptEditorIntialization
| editor |
editor := DRCScriptEditor new.

self assert: (editor code) isNil equals: true. 

editor delete.