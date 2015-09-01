private
addBehaviorMethods: aBehavior
	"Adds non extension methods defined in class or trait. 
	 This is invoked when including a behavior for the first time"
	self addBehaviorMethods: aBehavior classSide methods: aBehavior classSide methods.
	self addBehaviorMethods: aBehavior methods: aBehavior instanceSide methods.