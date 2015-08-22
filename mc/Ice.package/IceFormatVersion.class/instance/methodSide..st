private
methodSide: aMethod
	^ aMethod methodClass isInstanceSide 
		ifTrue: [ 'instance' ]
		ifFalse: [ 'class' ]