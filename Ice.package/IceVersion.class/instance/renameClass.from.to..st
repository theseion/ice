renaming
renameClass: aClass from: oldName to: newName
	self 
		renameBehavior: aClass 
		from: oldName 
		to: newName 
		usingDescriptionClass: IceClassDescription