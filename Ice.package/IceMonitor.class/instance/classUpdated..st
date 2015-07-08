system events
classUpdated: ann
	self projects 
		select: [ :each | each includesBehavior: ann classAffected ] 
		thenDo: [ :each | each updateClass: ann classAffected ]	