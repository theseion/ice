tests repository
testRemoveMethod
	| project package |
	
	package := self createPackageForTest.
	project := self createProjectForTest.
	
	project addPackage: package. 
	project removeMethod: IceMockClass1>>#method1.

	self deny: (project repository / 'Ice-Tests-Mock.package' / 'IceMockClass1.class' / 'instance' / 'method1.st') exists