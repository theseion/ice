accessing
referenceDirectoryOn: aRepository
	^ (self originPackage asIceDescription referenceDirectoryOn: aRepository) 
		/ (self name, '.class')	