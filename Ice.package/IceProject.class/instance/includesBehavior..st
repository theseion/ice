testing
includesBehavior: aBehavior
	^ self packages anySatisfy: [ :each | each includesClass: aBehavior ]