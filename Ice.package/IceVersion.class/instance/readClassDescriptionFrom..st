reading
readClassDescriptionFrom: aReference
	"aReference has to point to class directory"
	| description commentReference |
	description := IceDescription fromReference: aReference / (IceDescription definitionFileName).
	commentReference := aReference / (IceBehaviorDescription commentFileName).
	commentReference exists ifTrue: [ 
		commentReference readStreamDo: [ :stream | description comment: stream contents ] ].
	^ description