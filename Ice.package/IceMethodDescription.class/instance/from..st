initialization
from: aMethod
	self name: aMethod selector.
	timeStamp := aMethod timeStamp. 
	categories := { aMethod category }.
	source := aMethod sourceCode.
