renaming
renameMethod: aMethod from: oldName to: newName
	| fromDescription toDescription |
	
	fromDescription := (IceMethodDescription descriptionFor: aMethod) new 
		origin: aMethod;
		name: oldName;
		yourself.
	toDescription := (IceMethodDescription from: aMethod) 
		name: newName; "change the name!"
		yourself.

	"Remove old method"
	(fromDescription referenceOn: self repository) ensureDelete.
	"Write new method"	
	self writeDescription: toDescription	