tests events
testClassUpdated
	| package project classDir classDef class |
	
	package := self createPackageForTest.
	project := self createProjectForTest.
	project register.
	project addPackage: package.
	
	classDir := project repository / 'Ice-Tests-Mock.package' / 'IceMockClass1.class'.
	classDef := classDir / IceDefinition definitionFileName.
	self assert: classDef exists.
	self assert: (project version readClassDescriptionFrom: classDir) comment = IceMockClass1 organization comment. 

	class := IceMockClass1 copy.
	class organization comment: 'Changed comment'.
	self monitor classUpdated: (ClassCommented 
		class: class
		oldComment: IceMockClass1 organization comment 
		newComment: class comment
		oldStamp: DateAndTime now - 1 day 
		newStamp: DateAndTime now).
		
	self assert: (project version readClassDescriptionFrom: classDir) comment = 'Changed comment'