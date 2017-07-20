as yet unclassified
open

	| stream |
	'xyz.tape' asFile delete.
	stream := FileStream newFileNamed: 'xyz.tape'.
	stream nextPutAll: 'Event Tape v1 ASCII' asString.
	stream close.
	stream open.
	^stream