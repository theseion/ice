tests repository
testRenameTraitFromTo
	| project package |
	
	package := self createPackageForTest.
	project := self createProjectForTest.
	project addPackage: package.
	
	self assert: (project repository / 'Ice-Tests-Mock.package' / 'TIceMockTrait1.trait') exists.

	project 
		renameTrait: TIceMockTrait1
		from: 'TIceMockTrait1' 
		to: 'TIceMockTrait1V2'.
	
	self deny: (project repository / 'Ice-Tests-Mock.package' / 'TIceMockTrait1.trait') exists.
	self assert: (project repository / 'Ice-Tests-Mock.package' / 'TIceMockTrait1V2.trait') exists	