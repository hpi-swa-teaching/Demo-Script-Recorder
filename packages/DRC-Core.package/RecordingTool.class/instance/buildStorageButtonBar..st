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
				label: 'Safe Record';
				action: #actionSafeRecord;
				help: 'Safes the current Record in the FileSystem'.
			};
		frame: (0@0.5 corner: 1@1)