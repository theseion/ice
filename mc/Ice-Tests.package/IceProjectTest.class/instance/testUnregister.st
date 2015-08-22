tests registering
testUnregister
	| project |
	
	project := self createProjectForTest.
	project register.
	self assert: project isRegistered.
	self assert: (IceMonitor uniqueInstance projects includes: project).
	
	project unregister.
	self deny: project isRegistered.
	self deny: (IceMonitor uniqueInstance projects includes: project).
	