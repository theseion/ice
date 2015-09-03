visitor
visitTraitDescription: aDescription
	^ self root 
		/ (aDescription packageName, IceFormatVersion extensionPackage) 
		/ (aDescription name, IceFormatVersion extensionTrait)