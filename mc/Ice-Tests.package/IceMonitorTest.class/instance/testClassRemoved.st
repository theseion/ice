tests events
testClassRemoved
	| package project |
	
	package := self createPackageForTest.
	project := self createProjectForTest.
	project register.
	
	project addPackage: package. 
	self assert: (project repository / 'Ice-Tests-Mock.package' / 'IceMockClass1.class') exists.
	
	self monitor classRemoved: (ClassRemoved
		class: IceMockClass1
		category: 'Ice-Tests-Mock').

	self deny: (project repository / 'Ice-Tests-Mock.package' / 'IceMockClass1.class') exists