recording
recordPackage: aReference
	self addDefinition: (self projectVersion readPackageDescriptionFrom: aReference).
	(aReference directoriesMatching: '*', IceFormatVersion extensionTrait) 
		do: [ :each | self recordTrait: each ].
	(aReference directoriesMatching: '*', IceFormatVersion extensionClass) 
		do: [ :each | self recordClass: each ].
	(aReference directoriesMatching: '*', IceFormatVersion extensionExtension) 
		do: [ :each | self recordMethods: each ]
		