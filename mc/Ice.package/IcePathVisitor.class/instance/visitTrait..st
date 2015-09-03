visitor
visitTrait: aTrait
	^ self root
		/ (aTrait package name, IceFormatVersion extensionPackage) 
		/ (aTrait name, IceFormatVersion extensionTrait)