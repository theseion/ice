instance creation
fromReference: aReference version: version
	^ aReference readStreamDo: [ :stream | 
		self fromStream: stream version: version ]