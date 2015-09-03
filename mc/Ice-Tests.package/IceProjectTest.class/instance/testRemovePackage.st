tests repository
testRemovePackage
	| project package |
	
	package := self createPackageForTest.
	project := self createProjectForTest.
	project addPackage: package.
	project removePackage: package.
	
	self deny: (project includesPackage: package).
	self deny: (project includesBehavior: IceMockClass1).
	self deny: (project includesMethod: IceMockClass1>>#method1).
	self deny: (project includesMethod: IceMockClass1 class>>#classMethod1).
	
	self deny: (project repository / 'Ice-Tests-Mock.package') exists.
	self deny: (project repository / 'Ice-Tests-Mock.package' / 'IceMockClass1.class') exists.
	self deny: (project repository / 'Ice-Tests-Mock.package' / 'IceMockClass1.class' / IceDefinition definitionFileName) exists.
	self deny: (project repository / 'Ice-Tests-Mock.package' / 'IceMockClass1.class' / 'class' / 'classMethod1.st') exists.
	self deny: (project repository / 'Ice-Tests-Mock.package' / 'IceMockClass1.class' / 'instance' / 'method1.st') exists.
	
	