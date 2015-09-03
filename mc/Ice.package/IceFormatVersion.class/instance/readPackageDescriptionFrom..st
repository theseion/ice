reading
readPackageDescriptionFrom: aReference
	"aReference has to point to package directory. 
	 e.g. root / A.package"
	^ IcePackageDefinition new 
		name: aReference base;
		yourself