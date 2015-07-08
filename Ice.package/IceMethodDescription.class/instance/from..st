initialization
from: aMethod
	self name: aMethod selector.
	categories := { aMethod category }.
	source := aMethod sourceCode.
