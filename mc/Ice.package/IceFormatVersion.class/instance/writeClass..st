writing
writeClass: aClass
	| description baseReference |
	description := aClass asIceDescription.
	baseReference := self pathFor: aClass.
	baseReference ensureCreateDirectory.
	(baseReference / self class definitionFileName)
		ensureDelete;
		writeStreamDo: [ :stream | description stonOn: (self stonWriterOn: stream) ].
	(baseReference / self class commentFileName)
		ensureDelete;
		writeStreamDo: [ :stream | stream << description comment ]