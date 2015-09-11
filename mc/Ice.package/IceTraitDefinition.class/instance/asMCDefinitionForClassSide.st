converting
asMCDefinitionForClassSide
	^ MCClassTraitDefinition
		baseTraitName: self name
		classTraitComposition: self classTraits
		category: self category