building
buildWith: builder
	
	^ builder build: (builder pluggableWindowSpec new
		model: self;
		extent: (420@120);
		label: #labelString;
		children: {
			self buildRecordingButtonBar: builder.
			self buildStorageButtonBar: builder.
			self buildPathInfo: builder.
		 })
		
	