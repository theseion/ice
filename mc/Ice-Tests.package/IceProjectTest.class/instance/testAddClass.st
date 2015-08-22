tests repository
testAddClass
	| project package |
	
	package := self createPackageForTest.
	project := self createProjectForTest.
	
	project packages add: package. "This is a bad way to add, but I want to skip the interiorise 
	step, to simulate a class operation"
	
	project addClass: IceMockClass1.

	self assert: (project repository / 'Ice-Tests-Mock.package') exists.
	self assert: (project repository / 'Ice-Tests-Mock.package' / 'IceMockClass1.class') exists.
	self assert: (project repository / 'Ice-Tests-Mock.package' / 'IceMockClass1.class' / project version class definitionFileName) exists.
	self assert: (project repository / 'Ice-Tests-Mock.package' / 'IceMockClass1.class' / 'class' / 'classMethod1.st') exists.
	self assert: (project repository / 'Ice-Tests-Mock.package' / 'IceMockClass1.class' / 'instance' / 'method1.st') exists.
