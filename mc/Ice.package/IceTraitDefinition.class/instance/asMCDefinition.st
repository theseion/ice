converting
asMCDefinition
	^ MCTraitDefinition 
		name: self name 
		traitComposition: self traits 
		category: self category
		comment: self comment 
		commentStamp: nil