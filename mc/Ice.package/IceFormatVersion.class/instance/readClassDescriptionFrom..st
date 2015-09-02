reading
readClassDescriptionFrom: aReference
	"aReference has to point to class directory"

	| description commentReference |
	description := IceDescription
		fromReference: aReference / IceDescription definitionFileName
		version: self.
	commentReference := aReference / self class commentFileName.
	commentReference exists ifTrue: [ 
		commentReference readStreamDo: [ :stream | description comment: stream contents ] ].
	^ description