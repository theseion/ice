writing
writeMethod: aMethod
	| description baseReference |
	description := aMethod asIceDescription.
	baseReference := self pathFor: aMethod.
	baseReference ensureCreateDirectory.
	(baseReference / description fileName)
		ensureDelete;
		writeStreamDo: [ :stream | 
			stream << '"'.
			description stonOn: (self stonWriterOn: stream).
			stream << '"'.
			stream cr.
			stream << description source ]