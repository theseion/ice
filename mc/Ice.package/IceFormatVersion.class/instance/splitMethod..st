private
splitMethod: aString
	| index  |
	
	self flag: #tood. "I look for this exact combination so... it is fragile :)"
	index := aString indexOfSubCollection: '}"'. 
	^ { 
	self removeEnclosingQuotesOf: (aString first: index + 1). 
	aString copyFrom: index + 3 to: aString size
	}