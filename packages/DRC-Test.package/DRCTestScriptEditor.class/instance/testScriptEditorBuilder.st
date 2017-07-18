as yet unclassified
testScriptEditorBuilder

"Hier sollte noch Tests ergänzt werden, nachdem wir wissen, wie man den ToolBuilder gut testen kann."
|  editor spec |
editor := DRCScriptEditor new.
self assert: (editor  labelString) equals: 'Script-Editor'.

spec := editor buildButtonBar: ToolBuilder new.
self assert: (spec children size) equals: 2.
self assert: (spec children at: 1) help equals: 'Save the written code.'.
self assert: (spec children at: 2) help equals: 'Reset the codepane.'.

spec := editor buildCodePane: ToolBuilder new.
self assert: (spec getText) equals: #code.

editor delete.