running
setUp
	super setUp.
	oldMonitor := IceMonitor uniqueInstance.
	IceMonitor instVarNamed: 'uniqueInstance' put: IceMonitor basicNew initialize