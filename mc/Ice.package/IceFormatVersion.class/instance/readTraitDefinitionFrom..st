reading
readTraitDefinitionFrom: aReference
	"aReference has to point to class directory.
	 Is the same as a class, but changes the directory reference. 
	 e.g. root / A.package / T.trait"
	^ self readClassDefinitionFrom: aReference