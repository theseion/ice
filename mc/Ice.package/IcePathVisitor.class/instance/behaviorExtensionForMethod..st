private
behaviorExtensionForMethod: aDescription
	aDescription realProtocol isExtensionProtocol ifTrue: [ ^ '.extension' ].
	aDescription origin isTrait ifTrue: [ ^ '.trait' ].
	^ '.class'