as yet unclassified
testHasEqualHashWith
| tool |
tool := DRCRecordingTool new.
tool addDependent: Morph new.

self assert: (tool recorder hasEqualHashWith: Morph new) equals: false.

tool delete.