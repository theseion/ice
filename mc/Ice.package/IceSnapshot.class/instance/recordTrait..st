recording
recordTrait: aReference
	self addDefinition: (self projectVersion readTraitDefinitionFrom: aReference).
	self recordMethods: aReference