tests repository
testRemoveTrait
	| project package |
	
	package := self createPackageForTest.
	project := self createProjectForTest.

	project addPackage: package. 
	project removeTrait: TIceMockTrait1.

	self deny: (project repository / 'Ice-Tests-Mock.package' / 'TIceMockTrait1.trait') exists.