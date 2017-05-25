building
buildWith: builder

  	^ builder build: (builder pluggableWindowSpec new
    			model: self;
    			extent: 500@500;
    			label: #labelString;
    			children: {
      			self buildCodePane: builder.
      			self buildButtonBar: builder.
    			}).