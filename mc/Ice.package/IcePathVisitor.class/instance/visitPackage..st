visitor
visitPackage: aPackage
	^ self root / (aPackage name, IceFormatVersion extensionPackage)