converting
asMCDefinition
	self flag: #todo. "Missing comment stamp"
	^ MCClassDefinition 
		name: self name
		superclassName: self superclass
		traitComposition: self traits
		classTraitComposition: self classTraits
		category: self category
		instVarNames: self slots
		classVarNames: self sharedSlots
		poolDictionaryNames: self sharedPools
		classInstVarNames: self classSlots
		type: self type
		comment: self comment
		commentStamp: nil