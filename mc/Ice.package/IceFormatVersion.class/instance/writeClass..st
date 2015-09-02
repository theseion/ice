writing
writeClass: aClass
	| description baseReference |
	description := aClass asIceDescription.
	baseReference := self pathFor: aClass.	
	self writeBehaviorDescription: description to: baseReference