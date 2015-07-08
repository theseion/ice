system events
classRecategorized: ann
	| oldPackage newPackage including |
	
	oldPackage := RPackageOrganizer default packageMatchingExtensionName: ann oldCategory.
	newPackage := RPackageOrganizer default packageMatchingExtensionName: ann newCategory.
	including := self projects select: [ :each | each includesPackage: oldPackage ].	
	oldPackage = newPackage 
		ifTrue: [ 
			"If is the same package, just category changed so we can just update class"
			including do: [ :each | each updateClass: ann classAffected ] ]
		ifFalse: [ 
			"Packages are different so we need to change all tree"
			| newProjects |
			newProjects := self projects select: [ :each | each includesPackage: newPackage ].
			including do: [ :each | each removeClass: ann classAffected ].
			newProjects do: [ :each | each addClass: ann classAffected ] ].