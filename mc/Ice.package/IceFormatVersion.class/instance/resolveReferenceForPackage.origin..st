private
resolveReferenceForPackage: description origin: aPackage
	^ self repository / description name, '.package'