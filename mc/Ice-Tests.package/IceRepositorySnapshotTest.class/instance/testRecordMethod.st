tests
testRecordMethod
	| project package snapshot definitions methodDefinition |
	
	package := self createPackageForTest.
	project := self createProjectForTest.
	project addPackage: package.
	
	snapshot := self createSnapshotWithoutRecordFor: project.	
	snapshot recordMethod: project repository 
		/ 'Ice-Tests-Mock.package' 
		/ 'IceMockClass1.class'
		/ 'instance'
		/ 'method1.st'.
	definitions := snapshot definitions.
	
	self deny: definitions isEmpty.
	methodDefinition := definitions first.
	self assert: methodDefinition class equals: IceMethodDefinition.
	self assert: methodDefinition name equals: 'method1'.	
	self assert: methodDefinition packageName equals: 'Ice-Tests-Mock'.
	self assert: methodDefinition protocols equals: #(testing).
	self assert: methodDefinition isInstanceSide.
	self deny: methodDefinition isTrait.
	self deny: methodDefinition isExtension.
	self assert: definitions size equals: 1