writing
writeMethod: aMethod
	| description baseReference |
	description := aMethod asIceDescription.
	baseReference := self pathFor: aMethod.
	self writeMethodDescription: description to: baseReference