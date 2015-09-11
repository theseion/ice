visitor
visitTraitDefinition: aDescription
	^ self root 
		/ (aDescription packageName, IceFormatVersion extensionPackage) 
		/ (aDescription name, IceFormatVersion extensionTrait)