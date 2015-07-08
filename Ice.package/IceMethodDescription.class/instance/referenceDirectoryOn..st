accessing
referenceDirectoryOn: aRepository 
	^ (self originClass instanceSide asIceDescription referenceDirectoryOn: aRepository) 
		/ self sideDirectory