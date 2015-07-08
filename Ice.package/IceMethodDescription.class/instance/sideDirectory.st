private
sideDirectory
	^ (self originClass isMeta 
		ifTrue: [ 'class' ]
		ifFalse: [ 'instance' ])
