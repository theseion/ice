instance creation
fromReference: aReference 
	^ aReference readStreamDo: [ :stream | self fromStream: stream ]