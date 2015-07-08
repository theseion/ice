system events
methodRemoved: ann
	self projects 
		select: [ :each | each includesMethod: ann method ] 
		thenDo: [ :each | each removeMethod: ann method ]		