building
buildRecordingButtonBar: builder
	^builder pluggablePanelSpec new
		layout: #horizontal;
		children: {
			builder pluggableActionButtonSpec new
				model: self;
				label: 'Record';
				action: #actionRecord;
				help: 'Recording the screen.'. 
			builder pluggableActionButtonSpec new
				model: self;
				label: 'Stop';
				action: #actionStop;
				help: 'Stops the recording of the screen.'.
			builder pluggableActionButtonSpec new
				model: self;
				label: 'Play';
				action: #actionPlay;
				help: 'Plays the current record.'.	
			builder pluggableActionButtonSpec new
				model: self;
				label: 'Edit Script';
				action: #actionEditScript;
				help: 'Edit script, which executes Code when the record starts'.	
			};
		frame: (0@0 corner: 1@0.5)
				