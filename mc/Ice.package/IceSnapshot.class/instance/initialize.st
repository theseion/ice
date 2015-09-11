initialization
initialize
	super initialize.
	definitions := OrderedCollection new.
	self record.
	self sortDefinitions.