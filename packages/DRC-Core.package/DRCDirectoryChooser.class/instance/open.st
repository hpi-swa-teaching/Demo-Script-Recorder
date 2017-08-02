open
open
	"Reminder: This class just exists since the file chooser normally returns a choosen file not a directory. It was my task to remind you to rewrite the file chooser, to make it possible that a directory is returned."
			
	| model |
	
	self postOpen.
	self morphicView openInWorld.
	UserInterfaceTheme current applyTo: self morphicView allMorphs.
	model := self morphicView model.
	FileChooser modalLoopOn: self morphicView.
	
	^ model directory
