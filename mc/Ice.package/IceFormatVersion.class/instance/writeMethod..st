writing
writeMethod: aMethod
	| description baseReference |
	description := aMethod asIceDefinition.
	baseReference := self pathFor: aMethod.
	self writeMethodDescription: description to: baseReference