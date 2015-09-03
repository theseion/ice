renaming
renameMethod: aMethod from: oldName to: newName
	| fromDescription toDescription |
	
	fromDescription := (IceMethodDefinition from: aMethod)
		name: oldName;
		yourself.
	toDescription := (IceMethodDefinition from: aMethod) 
		name: newName; "change the name!"
		yourself.

	"Remove old method"
	((self pathFor: fromDescription) / fromDescription fileName) ensureDelete.
	"Write new method"	
	self writeMethodDescription: toDescription to: (self pathFor: toDescription)