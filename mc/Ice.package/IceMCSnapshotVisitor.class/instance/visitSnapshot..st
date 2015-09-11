visitor
visitSnapshot: aSnapshot 
	aSnapshot definitions do: [ :each | each iceAccept: self ]