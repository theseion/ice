recording
recordPackage: aPackage 
	self addDefinition: aPackage asIceDefinition.
	aPackage definedClasses 
		do: [ :each | self recordBehavior: each package: aPackage ].
	aPackage extensionMethods 
		do: [ :each | self recordMethod: each ]