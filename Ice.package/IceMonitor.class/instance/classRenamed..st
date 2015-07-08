system events
classRenamed: ann
	self projects 
		select: [ :each | each includesBehavior: ann classAffected ] 
		thenDo: [ :each | 
			each 
				renameClass: ann classAffected 
				from: ann oldName 
				to: ann newName ]	