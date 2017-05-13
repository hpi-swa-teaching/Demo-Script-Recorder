building
buildButtonBar: builder

  ^ builder pluggablePanelSpec new
    layout: #vertical;
    children: {
      builder pluggableActionButtonSpec new
        model: self;
        label: 'EXE';
        action: #actionExecuteCode;
        help: 'Execute the given Code.'.
      };
    frame: (0@0.9 corner: 1@1).