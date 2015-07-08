initialization
from: aClass
	super from: aClass.
	self traits: (aClass traitComposition ifNotNil: #asString).
	self classTraits: (aClass class traitComposition ifNotNil: #asString).		
	
	superclass := aClass superclass name.
	classSlots := aClass class slotNames asArray.
	sharedSlots := aClass classPool keys asArray.
	slots := aClass slotNames.
	sharedPools := aClass sharedPools collect: #name as: Array.
	category := aClass basicCategory.
	comment := aClass organization comment