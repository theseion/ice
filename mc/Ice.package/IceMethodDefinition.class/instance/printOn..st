printing
printOn: stream 
	stream 
		<< self class name 
		<< $( 
			<<  self className 
			<< (self isInstanceSide ifTrue: [''] ifFalse: [ ' class' ]) 
			<< '>>#' 
			<< self name 
		<< $)