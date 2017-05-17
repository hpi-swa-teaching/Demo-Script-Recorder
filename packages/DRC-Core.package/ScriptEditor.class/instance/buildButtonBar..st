building
buildButtonBar: builder

  ^ builder pluggablePanelSpec new
    layout: #horizontal;
    children: {
      builder pluggableActionButtonSpec new
        model: self;
        label: 'Save';
        action: #actionSaveCurrentScript;
        help: 'Save the written code.'.
	builder pluggableActionButtonSpec new
        model: self;
        label: 'Load';
        action: #actionLoadSavedCode;
        help: 'Load the last save.'.
	builder pluggableActionButtonSpec new
        model: self;
        label: 'Reset';
        action: #actionResetScript;
        help: 'Reset the codepane.'.
      };
    frame: (0@0.93 corner: 1@1).