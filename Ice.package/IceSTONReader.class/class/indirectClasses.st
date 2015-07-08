accessing
indirectClasses 
	^ (IceDescription allSubclasses 
		collect: [ :each | each stonName -> each ])
		asDictionary