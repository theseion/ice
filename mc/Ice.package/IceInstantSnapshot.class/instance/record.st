recording
record 
	self project packages
		do: [ :each | self recordPackage: each ]