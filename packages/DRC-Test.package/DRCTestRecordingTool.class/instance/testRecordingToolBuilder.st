as yet unclassified
testRecordingToolBuilder

	|tool spec|
	
	tool := DRCRecordingTool new.
	spec := tool buildRecordingButtonBar: ToolBuilder new.
	self 
		assert: (spec children size) equals: 4;
		assert: (spec children at: 1) help equals: 'Recording the screen.';
		assert: (spec children at: 2) help equals:  'Stops the current record.';
		assert: (spec children at: 3) help equals: 'Plays the current record.';
		assert: (spec children at: 4) help equals:  'Edit script, which executes Code when the record starts'.

	spec := tool buildStorageButtonBar: ToolBuilder new.
	self 
		assert: (spec children size) equals: 3;
		assert: (spec children at: 1) help equals: 'Loads a Record from the FileSystem';
		assert: (spec children at: 2) help equals: 'Saves the current Record in the FileSystem';
		assert: (spec children at: 3) help equals: 'Create a backup of your current Squeak image state to recreate it by playing the tape.'.

	spec := tool buildPathInfo: ToolBuilder new.
	self assert: spec getText equals: #currentTapePath.
	
	tool delete.
 