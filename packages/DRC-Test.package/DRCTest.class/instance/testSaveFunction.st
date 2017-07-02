Test-DRCScriptEditor
testSaveFunction

	|scriptEditor|
	scriptEditor := DRCScriptEditor new.
	scriptEditor code: 'test'.
	self assert: scriptEditor code notNil  equals: true.
	scriptEditor actionSaveCode.
	self assert: scriptEditor code notNil  equals: true.
	scriptEditor delete.