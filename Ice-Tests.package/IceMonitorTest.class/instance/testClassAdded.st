tests events
testClassAdded
	| project package |
	
	package := self createPackageForTest.
	project := self createProjectForTest.
	project register.
	
	project packages add: package.
	
	self monitor classAdded: (ClassAdded 
		class: IceMockClass1
		category: 'Ice-Tests-Mock').

	self assert: (project repository / 'Ice-Tests-Mock.package') exists.
	self assert: (project repository / 'Ice-Tests-Mock.package' / 'IceMockClass1.class') exists.
	self assert: (project repository / 'Ice-Tests-Mock.package' / 'IceMockClass1.class' / IceDescription definitionFileName) exists.
	self assert: (project repository / 'Ice-Tests-Mock.package' / 'IceMockClass1.class' / 'class' / 'classMethod1.st') exists.
	self assert: (project repository / 'Ice-Tests-Mock.package' / 'IceMockClass1.class' / 'instance' / 'method1.st') exists.
