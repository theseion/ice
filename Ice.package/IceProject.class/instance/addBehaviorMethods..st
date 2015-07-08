private
addBehaviorMethods: aBehavior
	"Adds non extension methods defined in class or trait. 
	 This is invoked when including a behavior for the first time"
	aBehavior classSide methods
		select: [ :each | 
			each realProtocol isExtensionProtocol not 
			or: [self includesPackage: each package ]  ]
		thenDo: [ :each | self addMethod: each ].
	aBehavior instanceSide methods
		select: [ :each | 
			each realProtocol isExtensionProtocol not 
			or: [self includesPackage: each package ]  ]
		thenDo: [ :each | self addMethod: each ]
