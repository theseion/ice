private
resolveReferenceForMethodExtension: description origin: aMethod
	self flag: #todo. "This is bad"
	^ self resolveReferenceForMethod: description origin: aMethod