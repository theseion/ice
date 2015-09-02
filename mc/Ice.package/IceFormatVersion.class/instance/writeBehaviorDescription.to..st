private
writeBehaviorDescription: description to: aReference
	aReference ensureCreateDirectory.
	(aReference / self class definitionFileName)
		ensureDelete;
		writeStreamDo: [ :stream | description stonOn: (self stonWriterOn: stream) ].
	(aReference / self class commentFileName)
		ensureDelete;
		writeStreamDo: [ :stream | stream << description comment ]