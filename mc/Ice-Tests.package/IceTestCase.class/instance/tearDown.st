running
tearDown
	IceMonitor instVarNamed: 'uniqueInstance' put: oldMonitor.
	super tearDown