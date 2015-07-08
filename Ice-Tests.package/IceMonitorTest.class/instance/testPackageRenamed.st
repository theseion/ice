tests events
testPackageRenamed
	| project package |
	
	package := self createPackageForTest.
	project := self createProjectForTest.
	project register.
	project addPackage: package.
	
	self assert: (project repository / 'Ice-Tests-Mock.package') exists.
	
	package name: 'Ice-Tests-Mock-V2'.
	IceMonitor uniqueInstance packageRenamed: (RPackageRenamed 
		to: package 
		oldName: 'Ice-Tests-Mock' 
		newName: 'Ice-Tests-Mock-V2').
		
	self deny: (project repository / 'Ice-Tests-Mock.package') exists.
	self assert: (project repository / 'Ice-Tests-Mock-V2.package') exists.
	