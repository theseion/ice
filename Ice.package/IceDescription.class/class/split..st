private
split: aString
	| index  |
	
	index := aString lastIndexOf: $}.
	^ { 
	aString first: index. 
	aString copyFrom: index + 1 to: aString size 
	}