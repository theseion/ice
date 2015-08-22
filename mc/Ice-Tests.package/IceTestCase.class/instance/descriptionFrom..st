private
descriptionFrom: aReference
	^ aReference readStreamDo: [ :stream | IceDescription fromStream: stream ]