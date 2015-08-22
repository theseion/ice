private
removeEnclosingQuotesOf: aString
	(aString first = $" and: [ aString last = $" ])
		ifFalse: [ self error: 'Bad method format: definition is not enclosed in quotes' ].
	^ aString copyFrom: 2 to: (aString size - 1) 
	