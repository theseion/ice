converting
asMCDefinition
	^ MCMethodDefinition 
		className: self className
		classIsMeta: self isInstanceSide not
		selector: self name asSymbol
		category: (self protocols 
			ifNotEmpty: [ :all | all first ]
			ifEmpty: [ Protocol unclassified ])
		timeStamp: self timeStamp
		source: self source