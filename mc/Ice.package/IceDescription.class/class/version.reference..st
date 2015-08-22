instance creation
version: version reference: aReference
	self flag: #todo. "This maybe shouldn't be here (in IceVersion, better)"
	^ aReference readStreamDo: [ :stream | 
		(version newSTONReader on: stream) next ]