visitor
visitClassDescription: aDescription
	^ self root / (aDescription packageName, '.package') / (aDescription name, '.class')