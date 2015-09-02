visitor
visitMethodDescription: aDescription	
	^ self root 
		/ (aDescription packageName, '.package') 
		/ (aDescription className, (self behaviorExtensionForMethodDescription: aDescription)) 
		/ (aDescription isInstanceSide 
			ifTrue: [ 'instance' ]
			ifFalse: [ 'class' ])