private
addBehaviorMethods: aBehavior methods: methods
	methods
		select: [ :each | 
			each origin = aBehavior 
				and: [
					each realProtocol isExtensionProtocol not 
					or: [self includesPackage: each package ] ] ]
		thenDo: [ :each | self addMethod: each ].
	