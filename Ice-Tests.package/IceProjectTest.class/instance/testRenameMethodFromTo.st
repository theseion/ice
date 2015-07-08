tests repository
testRenameMethodFromTo
	| project package dir |
	
	package := self createPackageForTest.
	project := self createProjectForTest.
	project addPackage: package.
	
	dir := project repository / 'Ice-Tests-Mock.package' / 'IceMockClass1.class' / 'instance'.
	self assert: (dir / 'method1.st') exists.

	project 
		renameMethod: IceMockClass1>>#method1
		from: 'method1' 
		to: 'method1V2'.
	
	self deny: (dir / 'method1.st') exists.
	self assert: (dir / 'method1V2.st') exists	