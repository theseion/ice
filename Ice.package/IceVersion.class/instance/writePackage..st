writing
writePackage: aPackage
	| reference |
	reference := aPackage asIceDescription referenceOn: self repository.
	reference parent ensureCreateDirectory.
	"I do not write package.ston because I do not have information I want to save (yet)"
	"reference writeStreamDo: [ :stream | aDescription stonOn: (self stonWriterOn: stream) ]"