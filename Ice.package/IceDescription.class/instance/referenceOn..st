accessing
referenceOn: aRepository
	^ (self referenceDirectoryOn: aRepository) / self class definitionFileName
	