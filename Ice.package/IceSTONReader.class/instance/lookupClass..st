private
lookupClass: name
	^ self indirectClasses 	
		at: name
		ifAbsent: [ ^ super lookupClass: name ]