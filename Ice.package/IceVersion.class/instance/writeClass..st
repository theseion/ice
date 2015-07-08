writing
writeClass: aClass
	| description |
	description := aClass asIceDescription.
	self writeDescription: description.
	(description commentReferenceOn: self repository)
		ensureDelete;
		writeStreamDo: [ :stream | stream << description comment ]