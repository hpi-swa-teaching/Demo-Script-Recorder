building
buildWith: builder
	^ builder build: (builder pluggableWindowSpec new
		model: self;
		extent: 500@200;
		label: #labelString;
		children: {
			self buildRecordingButtonBar: builder.
			self buildStorageButtonBar: builder
		 })
		
	