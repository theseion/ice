factory
createSnapshotWithoutRecordFor: project
	^ IceRepositorySnapshot basicNew 
		instVarNamed: 'project' put: project;
		instVarNamed: 'definitions' put: OrderedCollection new;
		yourself