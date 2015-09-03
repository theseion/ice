visitor
visitMethod: aMethod
	^ self root 
		/ (aMethod package name, self class extensionPackage) 
		/ (aMethod origin instanceSide name, (self behaviorExtensionForMethod: aMethod)) 
		/ (aMethod origin isInstanceSide 
			ifTrue: [ 'instance' ]
			ifFalse: [ 'class' ])