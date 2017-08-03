as yet unclassified
testScriptEditorBuilder

	| spec | 
	
	self assert: (self editor labelString) equals: 'Script-Editor'.

	spec := self editor buildButtonBar: ToolBuilder new.
	self 
		assert: (spec children size) equals: 2;
		assert: (spec children at: 1) help equals: 'Save the written code.';
		assert: (spec children at: 2) help equals: 'Reset the codepane.'.

	spec := self editor buildCodePane: ToolBuilder new.
	self assert: (spec getText) equals: #code.
