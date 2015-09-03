renaming
renamePackage: aPackage from: oldName to: newName
	| fromDescription toDescription toReference |
	
	fromDescription := (IcePackageDefinition from: aPackage)
		name: oldName;
		yourself.
	toDescription := (IcePackageDefinition from: aPackage)
		name: newName;
		yourself.
	
	(self pathFor: fromDescription)
		renameTo: (toReference := self pathFor: toDescription) basename.
	self writePackageDescription: toDescription to: toReference 	
	