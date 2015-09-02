private
pathFor: anObject
	"Retrieves the path in the repository corresponding to the object"
	^ (IcePathVisitor root: self repository root) visit: anObject