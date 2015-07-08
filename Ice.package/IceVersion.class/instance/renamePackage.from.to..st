renaming
renamePackage: aPackage from: oldName to: newName
	| fromDescription toDescription |
	
	fromDescription := IcePackageDescription new 
		origin: aPackage;
		name: oldName;
		yourself.
	toDescription := IcePackageDescription new 
		origin: aPackage;
		name: newName;
		yourself.
	
	(fromDescription referenceDirectoryOn: self repository)
		renameTo: (toDescription referenceDirectoryOn: self repository) basename