visitor
visitClassDescription: aDescription
	^ self root 
		/ (aDescription packageName, IceFormatVersion extensionPackage) 
		/ (aDescription name, IceFormatVersion extensionClass)