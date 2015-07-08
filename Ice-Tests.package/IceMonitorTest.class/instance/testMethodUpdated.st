tests events
testMethodUpdated
	| project package classDir methodDef |
	
	package := self existingPackageForTest.
	project := self createProjectForTest.
	project register.
	
	project addPackage: package.
	
	classDir := project repository / 'Ice-Tests-Mock.package' / 'IceMockClass1.class'.
	methodDef := classDir / 'instance' / 'method1.st'.
	self assert: (self descriptionFrom: methodDef) categories anyOne = (IceMockClass1>>#method1) protocol. 
	
	self monitor methodUpdated: (MethodRecategorized  
		method: ((IceMockClass1>>#method1) copy 
			protocol: #testing;
			yourself)
		oldProtocol: #accessing).

	self assert: (self descriptionFrom: methodDef) categories anyOne = #'testing'
