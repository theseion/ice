writing
writeClass: aClass
	| description baseReference |
	description := aClass asIceDefinition.
	baseReference := self pathFor: aClass.	
	self writeBehaviorDescription: description to: baseReference