tests events
testMethodAdded
	| project package |
	
	package := self existingPackageForTest.
	project := self createProjectForTest.
	project register.
	
	project packages add: package.
	
	self monitor methodAdded: (MethodAdded method: IceMockClass1>>#method1).

	self assert: (project repository / 'Ice-Tests-Mock.package') exists.
	self assert: (project repository / 'Ice-Tests-Mock.package' / 'IceMockClass1.class' / 'instance' / 'method1.st') exists.
