accessing
commentReferenceOn: aRepository
	^ (self referenceDirectoryOn: aRepository) / self class commentFileName
	