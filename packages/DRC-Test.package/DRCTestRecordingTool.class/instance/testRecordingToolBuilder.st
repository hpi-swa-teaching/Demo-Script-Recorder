as yet unclassified
testRecordingToolBuilder

	|tool spec|
	tool := DRCRecordingTool new.
	
	spec := tool buildRecordingButtonBar: ToolBuilder new.
	self assert: (spec children size) equals: 4.
	self assert: (spec children at: 1) help equals: 'Recording the screen.'.
	self assert: (spec children at: 2) help equals:  'Stops the current record.'.
	self assert: (spec children at: 3) help equals: 'Plays the current record.'.
	self assert: (spec children at: 4) help equals:  'Edit script, which executes Code when the record starts'.

	spec := tool buildStorageButtonBar: ToolBuilder new.
	self assert: (spec children size) equals: 3.
	self assert: (spec children at: 1) help equals: 'Loads a Record from the FileSystem'.
	self assert: (spec children at: 2) help equals: 'Saves the current Record in the FileSystem'.
	self assert: (spec children at: 3) help equals: 'If "save state" is "on" the squeak state at the beginnig of a recording will be safed. If the recording is later played the saved state will be restored.'.

	spec := tool buildPathInfo: ToolBuilder new.
	self assert: spec getText equals: #currentTapePath.
	tool delete.
 