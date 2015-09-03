visitor
visitTrait: aTrait
	^ self root
		/ (aTrait package name, self class extensionPackage) 
		/ (aTrait name, self class extensionTrait)