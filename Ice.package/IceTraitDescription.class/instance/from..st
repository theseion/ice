initialization
from: aTrait
	super from: aTrait.
	self traits: (aTrait traitComposition ifNotNil: #asString).
	self classTraits: (aTrait classTrait traitComposition ifNotNil: #asString).		
