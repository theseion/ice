tests registering
testRegister
	| project |
	
	project := self createProjectForTest.
	project register.
	
	self assert: project isRegistered.
	self assert: (IceMonitor uniqueInstance projects includes: project) 