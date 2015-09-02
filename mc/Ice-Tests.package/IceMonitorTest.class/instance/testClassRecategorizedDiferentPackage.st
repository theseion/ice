tests events
testClassRecategorizedDiferentPackage
	| package project classDir classDef class |
	
	"Do not use #createPackageForTest because I need ir to be a real package"
	package := self existingPackageForTest.
	project := self createProjectForTest.
	project register.
	project addPackage: package.
	
	classDir := project repository / 'Ice-Tests-Mock.package' / 'IceMockClass1.class'.
	classDef := classDir / IceDescription definitionFileName.
	self assert: classDef exists.
	self assert: (project version readClassDescriptionFrom: classDir) category = 'Ice-Tests-Mock'. 

	class := IceMockClass1 copy.
	class basicCategory: #'Ice-DoesNotExists'.
	self monitor classRecategorized: (ClassRecategorized  
		class: class 
		recategorizedFrom: #'Ice-Tests-Mock' 
		to: #'Ice-DoesNotExists').
		
	self deny: classDir exists.