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
	
	^ description