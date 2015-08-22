private renaming
renameBehavior: aBehavior from: oldName to: newName usingDescriptionClass: descriptionClass
	| fromDescription toDescription |
	
	fromDescription := descriptionClass new 
		origin: aBehavior;
		name: oldName;
		yourself.
	toDescription := (descriptionClass from: aBehavior) 
		name: newName; "change the name!"
		yourself.
	
	"rename directory"
	(fromDescription referenceDirectoryOn: self repository)
		renameTo: (toDescription referenceDirectoryOn: self repository) basename.
	"rewrite definition"
	self writeDescription: toDescription