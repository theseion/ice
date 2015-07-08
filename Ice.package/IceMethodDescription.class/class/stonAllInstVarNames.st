accessing
stonAllInstVarNames
	^ super stonAllInstVarNames copyWithoutAll: #(name source)