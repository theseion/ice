visitor
visitClassDescription: aDescription
	^ self root 
		/ (aDescription packageName, self class extensionPackage) 
		/ (aDescription name, self class extensionClass)