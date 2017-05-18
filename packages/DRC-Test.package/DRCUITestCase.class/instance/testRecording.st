as yet unclassified
testRecording

	(self subject findByLabel: 'Record') click.
	(self subject findByLabel: 'Stop') click.
	self assert: self recorder tape notNil equals: true.