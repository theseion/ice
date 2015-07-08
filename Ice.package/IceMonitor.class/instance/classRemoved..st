system events
classRemoved: ann
	self projects 
		select: [ :each | each includesBehavior: ann classAffected ] 
		thenDo: [ :each | each removeClass: ann classAffected ]	