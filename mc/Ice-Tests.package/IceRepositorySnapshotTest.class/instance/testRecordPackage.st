tests
testRecordPackage
	| project package snapshot definitions |
	
	package := self createPackageForTest.
	project := self createProjectForTest.
	project addPackage: package.
	snapshot := project snapshot.
	definitions := snapshot definitions.
	self deny: definitions isEmpty.
	self assert: definitions first name equals: 'Ice-Tests-Mock'.  
	self
		assert: (definitions select: [ :each | each class = IcePackageDefinition ]) size 
		equals: 1.
	self 
		assert: (definitions select: [ :each | each isKindOf: IceBehaviorDefinition ]) size
		equals: package definedClasses size. 
	self 
		assert: (definitions select: [ :each | each class = IceMethodDefinition ]) size
		equals: package methods size