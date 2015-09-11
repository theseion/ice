visitor
visitClassDefinition: aDescription
	^ self root 
		/ (aDescription packageName, IceFormatVersion extensionPackage) 
		/ (aDescription name, IceFormatVersion extensionClass)