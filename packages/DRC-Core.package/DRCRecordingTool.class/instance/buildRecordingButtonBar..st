building
buildRecordingButtonBar: builder
	
	^ builder pluggablePanelSpec new
		layout: #horizontal;
		children: {
			builder pluggableActionButtonSpec new
				model: self;
				color: #getColor;
				label: #getLabel;
				action: #actionToggleRecordPause;
				help: 'Recording the screen.'. 
			builder pluggableActionButtonSpec new
				model: self;
				label: 'Stop';
				action: #actionStop;
				help: 'Stops the current record.'.
			builder pluggableActionButtonSpec new
				model: self;
				label: #getPlayLabel;
				action: #actionTogglePlayPause;
				help: 'Plays the current record.'.	
			builder pluggableActionButtonSpec new
				model: self;
				label: 'Edit Script';
				action: #actionEditScript;
				help: 'Edit script, which executes Code when the record starts'.	
			};
		frame: (0@0 corner: 1@0.35)
				