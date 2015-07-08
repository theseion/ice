initialization
from: aClass
	super from: aClass.
	superclass := aClass superclass name.
	classSlots := aClass class slotNames asArray.
	sharedSlots := aClass classPool keys asArray.
	slots := aClass slotNames.
	sharedPools := aClass sharedPools collect: #name as: Array.
	category := aClass basicCategory.
	comment := aClass organization comment