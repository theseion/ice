accessing
loadOrder 
	"Indicates load order for a definition. This is important to ensure the install in a right order: 
	 packages, traits, classes, methods... other definitions (if added) should define right order or 
	 they will be considered lowest"
	^ self class loadOrder