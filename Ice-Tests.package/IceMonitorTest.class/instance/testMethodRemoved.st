tests events
testMethodRemoved
	| project package |
	
	package := self existingPackageForTest.
	project := self createProjectForTest.
	project register.
	
	project addPackage: package.
	
	self monitor methodRemoved: (MethodRemoved 
		methodRemoved: IceMockClass1>>#method1
		protocol: (IceMockClass1>>#method1) protocol
		origin: (IceMockClass1>>#method1) origin).

	self assert: (project repository / 'Ice-Tests-Mock.package') exists.
	self deny: (project repository / 'Ice-Tests-Mock.package' / 'IceMockClass1.class' / 'instance' / 'method1.st') exists.
