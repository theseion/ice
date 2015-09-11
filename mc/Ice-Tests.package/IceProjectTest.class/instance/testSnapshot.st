tests snapshot
testSnapshot 
	| package project patch |
	
	package := RPackageOrganizer default packageNamed: 'Ice-Tests-Mock'.
	project := (IceProject name: 'test') 
		addPackage: package;
		yourself.

	patch := project snapshot asMCSnapshot 
		patchRelativeToBase: package mcPackage snapshot.

	self assert: patch operations isEmpty