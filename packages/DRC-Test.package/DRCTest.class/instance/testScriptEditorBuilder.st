Test-DRCScriptEditor
testScriptEditorBuilder

"Hier sollte noch Tests ergänzt werden, nachdem wir wissen, wie man den ToolBuilder gut testen kann."
|  editor |
editor := DRCScriptEditor new.
self assert: (editor  labelString) equals: 'Script-Editor'.

editor delete.