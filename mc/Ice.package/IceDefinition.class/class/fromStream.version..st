instance creation
fromStream: stream version: version
	self flag: #todo. "This maybe shouldn't be here (in IceVersion, better)"
	^  (version newSTONReader on: stream) next