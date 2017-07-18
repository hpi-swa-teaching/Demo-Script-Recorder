as yet unclassified
testAddJournalFile
| recorder |
recorder := DRCRecorder new.
recorder addJournalFile.

self assert: (FileDirectory new fileExists: recorder journalFile fullName) equals: true. 
recorder delete.