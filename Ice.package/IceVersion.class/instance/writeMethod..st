writing
writeMethod: aMethod
	| description |
	description := aMethod asIceDescription.
	self writeDescription: description do: [ :stream | 
		description stonOn: (self stonWriterOn: stream).
		stream cr.
		stream << description source ]		
	