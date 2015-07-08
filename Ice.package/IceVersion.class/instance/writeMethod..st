writing
writeMethod: aMethod
	| description |
	description := aMethod asIceDescription.
	self writeDescription: description do: [ :stream | 
		stream << '"'.
		description stonOn: (self stonWriterOn: stream).
		stream << '"'.
		stream cr.
		stream << description source ]		
	