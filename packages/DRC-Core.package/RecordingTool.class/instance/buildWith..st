building
buildWith: builder
	^ builder build: (builder pluggableWindowSpec new
		model: self;
		extent: 500@50;
		label: #labelString;
		children: {
			self buildButtonBar: builder.
		 })