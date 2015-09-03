accessing
indirectClasses 
	^ (IceDefinition allSubclasses 
		collect: [ :each | each stonName -> each ])
		asDictionary