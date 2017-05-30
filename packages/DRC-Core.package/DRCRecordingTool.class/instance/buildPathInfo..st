building
buildPathInfo: aBuilder
	^ aBuilder pluggableTextSpec new
		model: self;
		getText: #currentPath;
		readOnly: true;
		frame: (0@0.85 corner: 1@1)