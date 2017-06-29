building
buildCodePane: builder

  	^ builder pluggableCodePaneSpec new
		model: self;
		setText: #code:;
		getText: #code;
 		frame: (0@0 corner: 1@0.93)