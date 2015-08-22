tests repository
testUpdateMethod
	| project package classDir methodDef method |
	
	package := self createPackageForTest.
	project := self createProjectForTest.
	
	project addPackage: package.	

	classDir := project repository / 'Ice-Tests-Mock.package' / 'IceMockClass1.class'.
	methodDef := classDir / 'instance' / 'method1.st'.
	self assert: (self descriptionFrom: methodDef) categories anyOne = (IceMockClass1>>#method1) protocol. 

	method := (IceMockClass1>>#method1) copy.
	method protocol: #'testing'.
	project updateMethod: method.
	
	self assert: (self descriptionFrom: methodDef) categories anyOne = #'testing'
