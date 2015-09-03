recording
recordClass: aReference
	self addDefinition: (self projectVersion readClassDefinitionFrom: aReference).
	self recordMethods: aReference	