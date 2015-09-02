initialization
from: aMethod
	self name: aMethod selector.
	packageName := aMethod package name.
	className := aMethod origin name.
	isInstanceSide := aMethod origin isInstanceSide.
	isTrait := aMethod origin isTrait.
	isExtension := aMethod realProtocol isExtensionProtocol.  
	timeStamp := aMethod timeStamp. 
	categories := { aMethod category }.
	source := aMethod sourceCode.
