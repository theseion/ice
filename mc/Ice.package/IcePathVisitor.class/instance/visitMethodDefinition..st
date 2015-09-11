visitor
visitMethodDefinition: aDescription	
	^ self root 
		/ (aDescription packageName, IceFormatVersion extensionPackage) 
		/ (aDescription className, (self behaviorExtensionForMethodDescription: aDescription)) 
		/ (aDescription isInstanceSide 
			ifTrue: [ 'instance' ]
			ifFalse: [ 'class' ])