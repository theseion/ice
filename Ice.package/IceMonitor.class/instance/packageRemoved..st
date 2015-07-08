system events
packageRemoved: ann
	self projects 
		select: [ :each | each includesPackage: ann package ] 
		thenDo: [ :each | each removePackage: ann package ]