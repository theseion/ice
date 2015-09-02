reading
readMethodDescriptionFrom: aReference
	| contents description classDir |
	contents := aReference readStreamDo: [ :stream | self split: stream contents ].
	description := aReference readStreamDo: [ :stream | 
		IceDescription 
			fromStream: contents first readStream 
			version: self ].
	description source: contents second.
	
	self flag: #todo. "This is kind of a hack, but this information is in the path and not 
	in the description, so I cannot make it otherwise. 
	Anyway, all of this is information I know because of the format: It *has* to be like 
	this"
	description flagInstanceSide: aReference parent basename = 'instance'.
	classDir := aReference parent parent.
	description flagTrait: classDir extension = 'trait'.
	description flagExtension: classDir extension = 'extension'.
	description className: classDir basename.
	description packageName: classDir parent basename.
		
	^ description