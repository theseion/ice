visitor
visitPackage: aPackage
	^ self root / (aPackage name, self class extensionPackage)