tests repository
testRenamePackageFromTo
	| project package |
	
	package := self createPackageForTest.
	project := self createProjectForTest.
	project addPackage: package.
	
	self assert: (project repository / 'Ice-Tests-Mock.package') exists.

	package name: 'Ice-Tests-Mock-Changed'.
	project 
		renamePackage: package 
		from: 'Ice-Tests-Mock' 
		to: 'Ice-Tests-Mock-Changed'.
	
	self deny: (project repository / 'Ice-Tests-Mock.package') exists.
	self assert: (project repository / 'Ice-Tests-Mock-Changed.package') exists.
	self assert: (project repository / 'Ice-Tests-Mock-Changed.package' / 'IceMockClass1.class') exists.
