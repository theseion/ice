tests repository
testAddPackage
	| project package |
	
	package := self createPackageForTest.
	project := self createProjectForTest.
	project addPackage: package.
	
	self assert: (project includesPackage: package).
	
	self deny: (project includesPackage: (RPackageOrganizer default packageNamed: 'Ice-Tests')).
	self deny: (project includesBehavior: IceProject).
	self deny: (project includesMethod: IceProject>>#name).
	
	self assert: (project repository / 'Ice-Tests-Mock.package') exists.
	self assert: (project repository / 'Ice-Tests-Mock.package' / 'IceMockClass1.class') exists.
	self assert: (project repository / 'Ice-Tests-Mock.package' / 'IceMockClass1.class' / IceDefinition definitionFileName) exists.
	self assert: (project repository / 'Ice-Tests-Mock.package' / 'IceMockClass1.class' / 'class' / 'classMethod1.st') exists.
	self assert: (project repository / 'Ice-Tests-Mock.package' / 'IceMockClass1.class' / 'instance' / 'method1.st') exists.
	self deny: (project repository / 'Ice-Tests-Mock.package' / 'TIceMockTrait1.class' / 'instance' / 'traitMethodAlias.st') exists.