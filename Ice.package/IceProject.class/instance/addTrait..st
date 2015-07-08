accessing repository
addTrait: aTrait
	self version writeTrait: aTrait.
	self addBehaviorMethods: aTrait