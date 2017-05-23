as yet unclassified
testRecording
	
	(self subject findByLabel: 'Record') click.
	(self subject findByLabel: 'Edit Script') click.
	(self subject findByLabel: 'Stop') click.
	self assert: self subject recorder tape notNil equals: true.