tests
testUnregisterProject 
	| project |
	
	project := IceProject name: 'test'.
	self monitor registerProject: project.
	self assert: project isRegistered.
	self monitor unregisterProject: project.
	self deny: project isRegistered.