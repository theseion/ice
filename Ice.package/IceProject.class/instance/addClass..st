accessing repository
addClass: aClass
	self version writeClass: aClass.
	self addBehaviorMethods: aClass