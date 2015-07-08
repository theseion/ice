system events
packageRenamed: ann
	self projects 
		select: [ :each | each includesPackage: ann package ] 
		thenDo: [ :each | 
			each 
				renamePackage: ann package 
				from: ann oldName 
				to: ann newName ]