tests repository
testAddTrait
	| project package |
	
	package := self createPackageForTest.
	project := self createProjectForTest.
	
	project packages add: package. "This is a bad way to add, but I want to skip the interiorise 
	step, to simulate a class operation"
	
	project addTrait: TIceMockTrait1. 

	self assert: (project repository / 'Ice-Tests-Mock.package') exists.
	self assert: (project repository / 'Ice-Tests-Mock.package' / 'TIceMockTrait1.trait') exists.
	self assert: (project repository / 'Ice-Tests-Mock.package' / 'TIceMockTrait1.trait' / IceDefinition definitionFileName) exists.
	self assert: (project repository / 'Ice-Tests-Mock.package' / 'TIceMockTrait1.trait' / 'class' / 'traitClassMethod1.st') exists.
	self assert: (project repository / 'Ice-Tests-Mock.package' / 'TIceMockTrait1.trait' / 'instance' / 'traitMethod1.st') exists