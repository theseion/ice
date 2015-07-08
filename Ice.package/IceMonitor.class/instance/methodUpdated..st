system events
methodUpdated: ann
	self projects 
		select: [ :each | each includesMethod: ann method ] 
		thenDo: [ :each | each updateMethod: ann method ]	