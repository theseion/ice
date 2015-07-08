tests
testRegisterProject 
	| project |
	
	project := IceProject name: 'test'.
	self monitor registerProject: project.
	
	self assert: project isRegistered