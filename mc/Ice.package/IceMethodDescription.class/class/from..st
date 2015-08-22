instance creation
from: aMethod
	^ (self descriptionFor: aMethod) basicNew 
		initializeFrom: aMethod;
		yourself