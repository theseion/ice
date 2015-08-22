writing
writePackage: aPackage
	| description baseReference |
	description := aPackage asIceDescription.
	baseReference := self pathFor: aPackage.
	baseReference ensureCreateDirectory.
	"I do not write definition.ston because I do not have information I want to save (yet)"
	"baseReference writeStreamDo: [ :stream | aDescription stonOn: (self stonWriterOn: stream) ]"