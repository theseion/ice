accessing repository
addPackage: aPackage
	packages add: aPackage.
	
	self version writePackage: aPackage.	
	aPackage definedClasses do: [ :each | self addClass: each ].
	aPackage metaclassExtensionSelectors keysAndValuesDo: [ :className :methods |
		| class |
		class := (Smalltalk globals at: className) classSide. 
		methods do: [ :each | self addMethod: class>>each ] ].
	aPackage classExtensionSelectors keysAndValuesDo: [ :className :methods |
		| class |
		class := (Smalltalk globals at: className) instanceSide. 
		methods do: [ :each | self addMethod: class>>each ] ]