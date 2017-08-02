open
open
	"Reminder: This class just exists since the file chooser normally just returns a choosen file    	not a directory. My task was it to remind you to rewrite the file chooser, so the return of a   	directory is also possible."
			
	| model |
	self postOpen.
	self morphicView openInWorld.
	UserInterfaceTheme current applyTo: self morphicView allMorphs.
	model := self morphicView model.
	FileChooser modalLoopOn: self morphicView.
	^ model directory
