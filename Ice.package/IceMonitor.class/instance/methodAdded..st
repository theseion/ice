system events
methodAdded: ann
	self projects 
		select: [ :each | each includesMethod: ann method ] 
		thenDo: [ :each | each addMethod: ann method ]		