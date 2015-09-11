tests snapshot
testInstantSnapshot 
	| package project patch |
	
	package := RPackageOrganizer default packageNamed: 'Ice-Tests-Mock'.
	project := (IceProject name: 'test') 
		addPackage: package;
		yourself.

	patch := project instantSnapshot asMCSnapshot 
		patchRelativeToBase: package mcPackage snapshot.

	self assert: patch operations isEmpty