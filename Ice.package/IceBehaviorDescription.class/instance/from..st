initialization
from: aClass
	self flag: #todo. "Traits"
	self name: aClass name.
	category := aClass basicCategory.
	traits := aClass traitComposition ifNotNil: #asString.
	classTraits := aClass class traitComposition ifNotNil: #asString.
	comment := aClass organization comment.