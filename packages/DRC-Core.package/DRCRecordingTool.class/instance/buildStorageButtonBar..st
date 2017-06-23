building
buildStorageButtonBar: builder
	^builder pluggablePanelSpec new
		layout: #horizontal;
		children: {
			builder pluggableActionButtonSpec new
				model: self;
				label: 'Load Record';
				action: #actionLoadRecord;
				help: 'Loads a Record from the FileSystem'. 
			builder pluggableActionButtonSpec new
				model: self;
				label: 'Save Record';
				action: #actionSaveRecord;
				help: 'Saves the current Record in the FileSystem'.
			};
		frame: (0@0.36 corner: 1@0.71)