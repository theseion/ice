reading
readClassDescriptionFrom: aReference
	"aReference has to point to class directory"

	| description commentReference |
	description := IceDefinition
		fromReference: aReference / IceDefinition definitionFileName
		version: self.
	commentReference := aReference / self class commentFileName.
	commentReference exists ifTrue: [ 
		commentReference readStreamDo: [ :stream | description comment: stream contents ] ].
	^ description