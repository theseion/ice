private
resolveReferenceForMethod: description origin: aMethod
	| parent |
	parent := aMethod methodClass instanceSide.
	^ (parent asIceDescription referenceOn: self origin: parent)
		/ (self methodSide: aMethod)
		/ description fileName