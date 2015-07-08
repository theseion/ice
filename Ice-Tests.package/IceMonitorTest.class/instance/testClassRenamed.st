tests events
testClassRenamed
	| package project |
	
	package := self createPackageForTest.
	project := self createProjectForTest.
	project register.
	project addPackage: package.
	
	self assert: (project repository / 'Ice-Tests-Mock.package' / 'IceMockClass1.class') exists.

	self monitor classRenamed: (ClassRenamed 
		class: IceMockClass1
		category: IceMockClass1 category 
		oldName: 'IceMockClass1' 
		newName: 'IceMockClass1V2').
		
	self deny: (project repository / 'Ice-Tests-Mock.package' / 'IceMockClass1.class') exists.
	self assert: (project repository / 'Ice-Tests-Mock.package' / 'IceMockClass1V2.class') exists