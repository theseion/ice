removing
removeMethod: aMethod
	(aMethod asIceDescription 
		referenceOn: self 
		origin: aMethod) 
		ensureDelete