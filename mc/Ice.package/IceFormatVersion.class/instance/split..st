private
split: aString
	| index  |
	
	index := aString lastIndexOf: $}.
	^ { 
	self removeEnclosingQuotesOf: (aString first: index + 1). 
	aString copyFrom: index + 2 to: aString size 
	}