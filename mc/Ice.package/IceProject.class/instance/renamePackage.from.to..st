accessing repository
renamePackage: aPackage from: oldName to: newName
	"WARNING: I'm assuming here the RPackage reference is already changed (since you should 
	arrive here after an RPackage change and not viceversa.
	this will stop working if someone change rpackage into a more naive implementation of rename! 
	But anyway, I will do a small check... just in case :)"
	
	(self packages anySatisfy: [ :each | each name = newName ])
		ifFalse: [  self error: 'The package has not been renamed in the system.' ].
		
	self version 
		renamePackage: aPackage 
		from: oldName 
		to: newName
	