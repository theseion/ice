recording
recordBehavior: aBehavior package: aPackage
	self addDefinition: aBehavior asIceDefinition.
	(aPackage definedMethodsForClass: aBehavior classSide) 
		do: [ :each | self recordMethod: each ].
	(aPackage definedMethodsForClass: aBehavior instanceSide) 
		do: [ :each | self recordMethod: each ]