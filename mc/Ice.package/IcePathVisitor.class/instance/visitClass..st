visitor
visitClass: aClass
	^ self root 
		/ (aClass package name, IceFormatVersion extensionPackage) 
		/ (aClass name, IceFormatVersion extensionClass)