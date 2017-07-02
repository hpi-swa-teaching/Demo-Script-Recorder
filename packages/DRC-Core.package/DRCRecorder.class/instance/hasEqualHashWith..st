recording-state
hasEqualHashWith: object

	^ ((self recordingTool dependents at: 1) hash = object hash)