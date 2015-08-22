system events
classAdded: ann
	self projects 
		select: [ :each | each includesBehavior: ann classAffected ] 
		thenDo: [ :each | each addClass: ann classAffected ]	