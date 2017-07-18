as yet unclassified
testResetFunction

	|scriptEditor|
	scriptEditor := DRCScriptEditor new.
	self assert: scriptEditor code notNil equals: false.
	scriptEditor code: 'test'.
	self assert: scriptEditor code notNil equals: true.
	scriptEditor actionResetScript.
	self assert: scriptEditor code notNil equals: false.
	scriptEditor delete.