removing
pathFor: aClass
	^ (IcePathVisitor root: self repository root) visit: aClass