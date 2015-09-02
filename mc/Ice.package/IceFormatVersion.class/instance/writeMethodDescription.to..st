private writing
writeMethodDescription: description to: aReference
	aReference ensureCreateDirectory.
	(aReference / description fileName)
		ensureDelete;
		writeStreamDo: [ :stream | 
			stream << '"'.
			description stonOn: (self stonWriterOn: stream).
			stream << '"'.
			stream cr.
			stream << description source ]