accessing
referenceDirectoryOn: aRepository
	^ (self extensionPackageReferenceOn: aRepository) 
		/ (self originClass instanceSide name, '.extension') 
		/ self sideDirectory