recording
record
	(self projectRoot directoriesMatching: ('*', IceFormatVersion extensionPackage))
		do: [ :each | self recordPackage: each ].
	self sortDefinitions