tests
testRecordClass
	| project package snapshot definitions classDefinition |
	
	package := self createPackageForTest.
	project := self createProjectForTest.
	project addPackage: package.
	
	snapshot := self createSnapshotWithoutRecordFor: project.	
	snapshot recordClass: project repository / 'Ice-Tests-Mock.package' / 'IceMockClass1.class'.
	definitions := snapshot definitions.
	
	self deny: definitions isEmpty.
	classDefinition := definitions first.
	self assert: classDefinition class equals: IceClassDefinition.
	self assert: classDefinition name equals: 'IceMockClass1'.
	self assert: classDefinition superclass equals: #Object.	
	self assert: classDefinition packageName equals: 'Ice-Tests-Mock'.
	self assert: classDefinition category equals: 'Ice-Tests-Mock'.
	self assert: classDefinition slots equals: #(test1 test2 anotherTest).
	self assert: classDefinition classSlots equals: #(instance1).
	self assert: classDefinition sharedSlots equals: #(Test).
	self assert: classDefinition sharedPools equals: #().
	"methods"
	self 
		assert: definitions size 
		equals: ((
			(IceMockClass1 methods select: [ :each | each origin = IceMockClass1 ]),
			(IceMockClass1 class methods select: [ :each | each origin = IceMockClass1 class ])) size + 1)