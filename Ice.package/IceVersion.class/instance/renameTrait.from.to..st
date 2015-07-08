renaming
renameTrait: aTrait from: oldName to: newName
	self 
		renameBehavior: aTrait 
		from: oldName 
		to: newName 
		usingDescriptionClass: IceTraitDescription