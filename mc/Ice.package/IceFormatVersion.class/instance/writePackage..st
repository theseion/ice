writing
writePackage: aPackage
	| description baseReference |
	description := aPackage asIceDefinition.
	baseReference := self pathFor: aPackage.
	self writePackageDescription: description to: baseReference