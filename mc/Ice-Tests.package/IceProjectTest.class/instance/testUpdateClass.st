tests repository
testUpdateClass
	| project package classDir class |
	
	package := self createPackageForTest.
	project := self createProjectForTest.
	
	project addPackage: package.	

	classDir := project repository / 'Ice-Tests-Mock.package' / 'IceMockClass1.class'.
	self assert: (project version readClassDefinitionFrom: classDir) comment = IceMockClass1 organization comment. 

	class := IceMockClass1 copy.
	class organization comment: 'Changed comment'.
	project updateClass: class.
	
	self assert: (project version readClassDefinitionFrom: classDir) comment = 'Changed comment'
