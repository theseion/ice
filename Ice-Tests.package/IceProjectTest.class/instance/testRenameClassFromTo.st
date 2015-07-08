tests repository
testRenameClassFromTo
	| project package |
	
	package := self createPackageForTest.
	project := self createProjectForTest.
	project addPackage: package.
	
	self assert: (project repository / 'Ice-Tests-Mock.package' / 'IceMockClass1.class') exists.

	project 
		renameClass: IceMockClass1
		from: 'IceMockClass1' 
		to: 'IceMockClass1V2'.
	
	self deny: (project repository / 'Ice-Tests-Mock.package' / 'IceMockClass1.class') exists.
	self assert: (project repository / 'Ice-Tests-Mock.package' / 'IceMockClass1V2.class') exists	