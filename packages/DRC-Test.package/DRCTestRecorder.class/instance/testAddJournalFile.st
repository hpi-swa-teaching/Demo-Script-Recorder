as yet unclassified
testAddJournalFile

self recorder addJournalFile.

self assert: (FileDirectory new fileExists: self recorder journalFile fullName) equals: true. 