tests repository
testRemoveClass
	| project package |
	
	package := self createPackageForTest.
	project := self createProjectForTest.

	project addPackage: package. 
	project removeClass: IceMockClass1.

	self deny: (project repository / 'Ice-Tests-Mock.package' / 'IceMockClass1.class') exists.
