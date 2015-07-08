initialization
initialize
	super initialize.
	packages := Set new.
	version := IceVersion project: self.
	repository := FileSystem memory