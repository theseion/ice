*Ice
findEntryNamed: aString
	self entries 
		do: [ :each | 
			each basename = aString ifTrue: [ ^ each ].
			each isDirectory ifTrue: [ 
				(each asFileReference findEntryNamed: aString)
					ifNotNil: [ :entryFound | ^ entryFound ] ] ].
	^ nil