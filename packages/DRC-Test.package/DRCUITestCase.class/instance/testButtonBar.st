as yet unclassified
testButtonBar
	
	|bar|
	bar := self subject findByClass: PluggablePanelSpec.
	self assert: PluggableActionButtonSpec label = 'EXE'.
	self assert: PluggableActionButtonSpec help = 'Execute the given Code.'