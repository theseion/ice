reading
readClassDefinitionFrom: aReference
	"aReference has to point to class directory. 
	 e.g. root / A.package / B.class"
	| description commentReference |
	
	description := IceDefinition
		fromReference: aReference / IceDefinition definitionFileName
		version: self.
	commentReference := aReference / self class commentFileName.
	commentReference exists ifTrue: [ 
		commentReference readStreamDo: [ :stream | description comment: stream contents ] ].
	
	self flag: #todo. "This is kind of a hack, but this information is in the path and not 
	in the description, so I cannot make it otherwise. 
	Anyway, all of this is information I know because of the format: It *has* to be like 
	this"
	description packageName: aReference parent base.
	
	^ description