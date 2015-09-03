visitor
visitMethodDescription: aDescription	
	^ self root 
		/ (aDescription packageName, self class extensionPackage) 
		/ (aDescription className, (self behaviorExtensionForMethodDescription: aDescription)) 
		/ (aDescription isInstanceSide 
			ifTrue: [ 'instance' ]
			ifFalse: [ 'class' ])