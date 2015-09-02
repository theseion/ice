visitor
visitTraitDescription: aDescription
	^ self root / (aDescription packageName, '.package') / (aDescription name, '.trait')