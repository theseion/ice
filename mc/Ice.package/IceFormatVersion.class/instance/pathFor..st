private
pathFor: anObject
	^ (IcePathVisitor root: self repository root) visit: anObject