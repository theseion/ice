instance creation
origin: anObject 
	^ self basicNew 
		initializeOrigin: anObject;
		yourself