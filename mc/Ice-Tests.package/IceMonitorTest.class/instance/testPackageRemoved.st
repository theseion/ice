tests events
testPackageRemoved
	| project package |
	
	package := self createPackageForTest.
	project := self createProjectForTest.
	project register.
	project addPackage: package.
	
	self assert: (project repository / 'Ice-Tests-Mock.package') exists.
	
	IceMonitor uniqueInstance packageRemoved: (RPackageUnregistered to: package).
		
	self deny: (project repository / 'Ice-Tests-Mock.package') exists