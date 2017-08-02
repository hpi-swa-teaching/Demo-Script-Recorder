recording-state
hasEqualHashWith: object

	^ ((self dependents at: 1) hash = object hash)