building
buildCodePane: builder

  self codepane: builder pluggableCodePaneSpec new.
  ^ self codepane  model: self;
            frame: (0@0 corner: 1@0.9).