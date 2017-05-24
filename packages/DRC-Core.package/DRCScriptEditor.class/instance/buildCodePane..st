building
buildCodePane: builder

  self codepane: builder pluggableCodePaneSpec new.
  ^ self codepane  model: self;
		setText: #code:;
		getText: #code;
            frame: (0@0 corner: 1@0.93).