recording
recordMethods: aReference
	(aReference allChildrenMatching: '*', IceFormatVersion extensionMethod) 
		do: [ :each | self recordMethod: each ]