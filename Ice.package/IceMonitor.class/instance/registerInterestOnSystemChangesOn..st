system registration
registerInterestOnSystemChangesOn: announcer
	announcer weak
		"package"
		when: RPackageRenamed send: #packageRenamed: to: self;
		when: RPackageUnregistered send: #packageRemoved: to: self;
		"class"
		when: ClassAdded send: #classAdded: to: self;
		when: ClassRemoved send: #classRemoved: to: self;
		when: ClassRenamed send: #classRenamed: to: self;
		when: ClassRecategorized send: #classRecategorized: to: self;
		when: ClassCommented, ClassModifiedClassDefinition, ClassReorganized, ProtocolAdded, ProtocolRemoved
			send: #classUpdated: 
			to: self;
		"method"
		when: MethodAdded send: #methodAdded: to: self;
		when: MethodRemoved send: #methodRemoved: to: self;
		when: MethodRecategorized, MethodModified 
			send: #methodUpdated: 
			to: self