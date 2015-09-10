factory
createSnapshotWithoutRecordFor: project
	^ IceSnapshot basicNew 
		instVarNamed: 'project' put: project;
		instVarNamed: 'definitions' put: OrderedCollection new;
		yourself