visitor
visitMethod: aMethod
	^ (aMethod methodClass iceAccept: self) / (aMethod methodClass isInstanceSide 
		ifTrue: [ 'instance' ]
		ifFalse: [ 'class' ]) 