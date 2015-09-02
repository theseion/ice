private renaming
renameBehavior: aBehavior from: oldName to: newName usingDescriptionClass: descriptionClass
	| fromDescription toDescription toReference |
	
	fromDescription := (descriptionClass from: aBehavior)
		name: oldName;
		yourself.
	toDescription := (descriptionClass from: aBehavior) 
		name: newName; "change the name!"
		yourself.
	
	"rename directory"
	(self pathFor: fromDescription)
		renameTo: (toReference := self pathFor: toDescription) basename.
	"rewrite definition"
	self writeBehaviorDescription: toDescription to: toReference