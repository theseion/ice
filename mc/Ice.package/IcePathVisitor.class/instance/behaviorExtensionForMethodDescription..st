private
behaviorExtensionForMethodDescription: aDescription
	aDescription isExtension ifTrue: [ ^ '.extension' ].
	aDescription isTrait ifTrue: [ ^ '.trait' ].
	^ '.class'