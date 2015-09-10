tests repository
testUpdateMethod
	| project package classDir methodDef method description |

	package := self createPackageForTest.
	project := self createProjectForTest.
	
	project addPackage: package.	

	classDir := project repository / 'Ice-Tests-Mock.package' / 'IceMockClass1.class'.
	methodDef := classDir / 'instance' / 'method1.st'.
	description	:= project version readMethodDefinitionFrom: methodDef.
	self assert: description protocols anyOne = (IceMockClass1>>#method1) protocol. 

	method := (IceMockClass1>>#method1) copy.
	method protocol: #'testing'.
	project updateMethod: method.

	description	:= project version readMethodDefinitionFrom: methodDef.	
	self assert: description protocols anyOne = #'testing'
