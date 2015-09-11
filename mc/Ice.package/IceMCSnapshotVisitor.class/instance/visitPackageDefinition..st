visitor
visitPackageDefinition: aDefinition
	organizationDefinition ifNil: [ 
		organizationDefinition := definitions add: (MCOrganizationDefinition categories: {}) ].
	organizationDefinition categories: (
		organizationDefinition categories, 
		aDefinition asMCDefinition categories)