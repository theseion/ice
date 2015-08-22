initialization
initialize
	super initialize.
	packages := Set new.
	version := IceFormatVersion project: self.
	repository := FileSystem memory