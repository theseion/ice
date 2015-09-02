writing
writePackage: aPackage
	| description baseReference |
	description := aPackage asIceDescription.
	baseReference := self pathFor: aPackage.
	self writePackageDescription: description to: baseReference