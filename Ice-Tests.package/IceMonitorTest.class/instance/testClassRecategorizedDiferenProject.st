tests events
testClassRecategorizedDiferenProject
	| project1 project2 package1 package2 classDir1 classDir2 class |
	
	"Skip for now because since I'm using a real model, it is hard to do this whitout 
	 actually change class category"
	self skip.
	
	"Do not use #createPackageForTest because I need ir to be a real package"
	package1 := self existingPackageForTest.
	project1 := self createProjectForTest.
	project1 register.
	project1 addPackage: package1.

	project2 := self createProjectForTest.
	project2 register.
	package2 := RPackageOrganizer default packageNamed: 'Ice-Tests'.
	project2 addPackage: package2.

	classDir1 := project1 repository / 'Ice-Tests-Mock.package' / 'IceMockClass1.class'.
	self assert: classDir1 exists.

	class := IceMockClass1 copy.
	class basicCategory: #'Ice-Tests'.
	self monitor classRecategorized: (ClassRecategorized  
		class: class 
		recategorizedFrom: #'Ice-Tests-Mock' 
		to: #'Ice-Tests').
		
	self deny: classDir1 exists. 
	classDir2 := project2 repository / 'Ice-Tests.package' / 'IceMockClass1.class'.
	self assert: classDir2 exists