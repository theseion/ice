instance creation
fromStream: stream
	^ (IceVersion newSTONReader on: stream) next