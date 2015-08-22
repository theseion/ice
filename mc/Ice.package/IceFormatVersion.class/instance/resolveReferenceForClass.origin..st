private
resolveReferenceForClass: description origin: aClass
	^ (aClass package asIceDescription referenceOn: self origin: aClass package)
		/ description name, '.class'