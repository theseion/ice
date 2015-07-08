accessing repository
addPackages: aCollection
	aCollection do: [ :each | self addPackage: each ]