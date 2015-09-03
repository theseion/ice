visitor
visitClass: aClass
	^ self root 
		/ (aClass package name, self class extensionPackage) 
		/ (aClass name, self class extensionClass)