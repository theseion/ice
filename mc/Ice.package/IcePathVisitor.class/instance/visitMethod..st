visitor
visitMethod: aMethod
	^ (aMethod origin instanceSide iceAccept: self) / (aMethod origin isInstanceSide 
		ifTrue: [ 'instance' ]
		ifFalse: [ 'class' ]) 