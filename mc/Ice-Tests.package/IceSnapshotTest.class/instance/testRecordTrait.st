tests
testRecordTrait
	| project package snapshot definitions traitDefinition |
	
	package := self createPackageForTest.
	project := self createProjectForTest.
	project addPackage: package.
	
	snapshot := self createSnapshotWithoutRecordFor: project.	
	snapshot recordClass: project repository / 'Ice-Tests-Mock.package' / 'TIceMockTrait1.trait'.
	definitions := snapshot definitions.
	
	self deny: definitions isEmpty.
	traitDefinition := definitions first.
	self assert: traitDefinition class equals: IceTraitDefinition.
	self assert: traitDefinition name equals: 'TIceMockTrait1'.
	self assert: traitDefinition packageName equals: 'Ice-Tests-Mock'.
	self assert: traitDefinition category equals: 'Ice-Tests-Mock'.
	"methods"
	self 
		assert: definitions size 
		equals: ((
			(TIceMockTrait1 methods select: [ :each | each origin = TIceMockTrait1 ]),
			(TIceMockTrait1 classTrait methods select: [ :each | each origin = TIceMockTrait1 classTrait ])) size + 1)